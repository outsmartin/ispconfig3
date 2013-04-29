execute "apt" do
  command "apt-get update"
end
package "htop"

package "imagemagick"
package "vim"
package "realpath"

execute "appArmor" do
  command <<-BASH
    /etc/init.d/apparmor stop
    update-rc.d -f apparmor remove
  BASH
  only_if { File.exists? "/etc/init.d/apparmor"}
end
package "apparmor" do
  action :purge
end
package "apparmor-utils" do
  action :purge
end


package "ntp"
package "ntpdate"

# 12 Install Postfix, Courier, Saslauthd, MySQL, rkhunter, binutils
%w[postfix postfix-mysql postfix-doc mysql-client mysql-server courier-authdaemon courier-authlib-mysql courier-pop courier-pop-ssl courier-imap courier-imap-ssl libsasl2-2 libsasl2-modules libsasl2-modules-sql sasl2-bin libpam-mysql openssl getmail4 rkhunter binutils maildrop].each do |p|
  package p
end

execute "mysql root" do
  command "mysqladmin -u root password #{node["mysql_root_password"]} || true"
  ignore_failure true
  only_if "echo ';' | mysql -uroot"
end

execute "mysql root" do
  command "mysqladmin -u root password #{node["mysql_root_password"]} || true"
  ignore_failure true
  only_if "echo ';' | mysql -uroot"
end

execute "Courier restart" do
  command <<-BASH
  /etc/init.d/courier-imap-ssl restart
  /etc/init.d/courier-pop-ssl restart
  BASH
end

%w[amavisd-new spamassassin clamav clamav-daemon zoo unzip bzip2 arj nomarch lzop cabextract apt-listchanges libnet-ldap-perl libauthen-sasl-perl clamav-docs daemon libio-string-perl libio-socket-ssl-perl libnet-ident-perl zip libnet-dns-perl].each do |p|
  package p
end
# The ISPConfig 3 setup uses amavisd which loads the SpamAssassin filter library internally, so we can stop SpamAssassin to free up some RAM:

execute "stop spamassassin" do
  command <<-BASH
/etc/init.d/spamassassin stop
update-rc.d -f spamassassin remove
  BASH
end

%w[apache2 apache2.2-common apache2-doc apache2-mpm-prefork apache2-utils
libexpat1 ssl-cert libapache2-mod-php5 php5 php5-common php5-gd php5-mysql
php5-imap php5-cli php5-cgi libapache2-mod-fcgid apache2-suexec php-pear
php-auth php5-mcrypt mcrypt php5-imagick imagemagick libapache2-mod-suphp
bind9 dnsutils
geoip-database vlogger webalizer awstats
].each do |p|
  package p
end

%w[suexec rewrite ssl actions include auth_digest proxy proxy_balancer
proxy_connect proxy_http ].each do |p|
  execute "apachemod##{p}" do
    command "a2enmod #{p}"
    notifies :restart, "service[apache2]"
    not_if { File.exists?("/etc/apache2/mods-enabled/#{p}.load") ||
             File.exists?("/etc/apache2/mods-enabled/#{p}.conf") }
  end
end
service "apache2" do
  action :nothing
  supports :restart => true
end

# 17 Install Vlogger, Webalizer, And AWstats
file "/etc/cron.d/awstats" do
  content ""
end

execute "provide ispconfig3" do
  command <<-BASH
  cd /tmp
  rm -rf ispconfig3_install ISPConfig-3-stable.tar.gz
  wget http://www.ispconfig.org/downloads/ISPConfig-3-stable.tar.gz
  tar xfz ISPConfig-3-stable.tar.gz
  cd ispconfig3_install/install/
  BASH
  not_if "file /tmp/ISPConfig-3-stable.tar.gz"
end

ruby_block "'patch' ispconfig install simple_query" do
  block do
    file = Chef::Util::FileEdit.new("/tmp/ispconfig3_install/install/lib/installer_base.lib.php")
    file.insert_line_after_match(/public function simple_query/,"return $default;")
    file.insert_line_after_match(/public function free_query/,"return $default;")
    file.search_file_replace(/openssl req /, "openssl req -batch ")
    file.write_file
  end
  not_if "fgrep batch /tmp/ispconfig3_install/install/lib/installer_base.lib.php"
end

ruby_block "'patch' ispconfig install" do
  block do
    file = Chef::Util::FileEdit.new("/tmp/ispconfig3_install/install/install.php")
    file.insert_line_after_match(
      /include_once.*conf.php'\);/,
      "$conf['mysql']['admin_password'] = '#{node["mysql_root_password"]}'; ")
    file.write_file
  end
end

execute "install ispconfig3" do
  command <<-BASH
    php -q /tmp/ispconfig3_install/install/install.php
  BASH
end

execute "add remote user to ispconfig" do
  mysql_blob = "insert into dbispconfig.remote_user
  (remote_username,remote_password,remote_functions) VALUES ('admin',
  MD5('admin'),'server_get, get_function_list, client_templates_get_all,
  server_get_serverid_by_ip, server_ip_add, server_ip_update,
  server_ip_delete;client_get_all, client_get,client_add,client_update,
  client_delete, client_get_sites_by_user, client_get_by_username,
  client_change_password, client_get_id,
  client_delete_everything;domains_domain_get, domains_domain_add,
  domains_domain_delete, domains_get_all_by_user;mail_domain_get,
  mail_domain_add, mail_d omain_update, mail_domain_delete,
  mail_domain_set_status, mail_domain_get_by_domain;mail_aliasdomain_get,
  mail_aliasdomain_add, mail_aliasdomain_update,
  mail_aliasdomain_delete;mail_mailinglist_get, mail_mailinglist_add,
  mail_mailinglist_update, mail_mailinglist_delete;mail_user_get,
  mail_user_add, mail_user_update, mail_user_delete;mail_alias_get,
  mail_alias_add, mail_alias_update, mail_alias_delete;mail_forward_get,
  mail_forward_add, mail_forward_update, mail_forward_delete;mail_catchall_get,
  mail_catchall_add, mail_catchall_update,
  mail_catchall_delete;mail_transport_get, mail_transport_add,
  mail_transport_update, mail_transport_delete;mail_whitelist_get,
  mail_whitelist_add, mail_whitelist_update,
  mail_whitelist_delete;mail_blacklist_get, mail_blacklist_add,
  mail_blacklist_update, mail_blacklist_delete;mail_spamfilter_user_get,
  mail_spamfilter_user_add, mail_spamfilter_user_update,
  mail_spamfilter_user_delete;mail_policy_get, mail_policy_add,
  mail_policy_update, mail_policy_delete;mail_fetchmail_get,
  mail_fetchmail_add, mail_fetchmail_update,
  mail_fetchmail_delete;mail_spamfilter_whitelist_get,
  mail_spamfilter_whitelist_add, mail_spamfilter_whitelist_update,
  mail_spamfilter_whitelist_delete;mail_spamfilter_blacklist_get,
  mail_spamfilter_blacklist_add, mail_spamfilter_blacklist_update,
  mail_spamfilter_blacklist_delete;mail_user_filter_get, mail_user_filter_add,
  mail_user_filter_update, mail_user_filter_delete;mail_filter_get,
  mail_filter_add, mail_filter_update, mail_filter_delete;sites_cron_get,
  sites_cron_add, sites_cron_update, sites_cron_delete;sites_database_get,
  sites_database_add, sites_database_update, sites_database_delete,
  sites_database_get_all_by_user, sites_database_user_get,
  sites_database_user_add, sites_database_user_update,
  sites_database_user_delete,
  sites_database_user_get_all_by_user;sites_web_folder_get,
  sites_web_folder_add, sites_web_folder_update, sites_web_folder_delete,
  sites_web_folder_user_get, sites_web_folder_user_add,
  sites_web_folder_user_update,
  sites_web_folder_user_delete;sites_ftp_user_get, sites_ftp_user_server_get,
  sites_ftp_user_add, sites_ftp_user_update,
  sites_ftp_user_delete;sites_shell_user_get, sites_shell_user_add,
  sites_shell_user_update, sites_shell_user_delete;sites_web_domain_get,
  sites_web_domain_add, sites_web_domain_update, sites_web_domain_delete,
  sites_web_domain_set_status;sites_web_aliasdomain_get,
  sites_web_aliasdomain_add, sites_web_aliasdomain_update,
  sites_web_aliasdomain_delete;sites_web_subdomain_get,
  sites_web_subdomain_add, sites_web_subdomain_update,
  sites_web_subdomain_delete;dns_zone_get, dns_zone_get_id, dns_zone_add,
  dns_zone_update, dns_zone_delete, dns_zone_set_status,
  dns_templatezone_add;dns_a_get, dns_a_add, dns_a_update,
  dns_a_delete;dns_aaaa_get, dns_aaaa_add, dns_aaaa_update,
  dns_aaaa_delete;dns_alias_get, dns_alias_add, dns_alias_update,
  dns_alias_delete;dns_cname_get, dns_cname_add, dns_cname_update,
  dns_cname_delete;dns_hinfo_get, dns_hinfo_add, dns_hinfo_update,
  dns_hinfo_delete;dns_mx_get, dns_mx_add, dns_mx_update,
  dns_mx_delete;dns_ns_get, dns_ns_add, dns_ns_update,
  dns_ns_delete;dns_ptr_get, dns_ptr_add,dns_ptr_update,
  dns_ptr_delete;dns_rp_get, dns_rp_add, dns_rp_update,
  dns_rp_delete;dns_srv_get, dns_srv_add, dns_srv_update,
  dns_srv_delete;dns_txt_get, dns_txt_add, dns_txt_update,
  dns_txt_delete;vm_openvz')"
  comm = "echo \"#{mysql_blob}\" | mysql -uroot -p#{node["mysql_root_password"]}"
  command comm
end
