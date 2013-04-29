require "savon"
module Isp3
  class Connection
    attr_accessor :session_id, :connection
    def initialize host, user, password
      @connection = Savon.client(
        endpoint: host + "index.php",
        namespace: host,
        pretty_print_xml: true,
        raise_errors: false,
        ssl_verify_mode: :none)
      response = @connection.call(:login, {message: {username: user, password: password}})
      @session_id = response.body[:login_response][:return]
    end

    def client_add
      params = {"session_id" => session_id, "reseller_id" => "0"}.merge(Isp3.client_add)
      connection.call("client_add", message: params)
    end

    def client_change_password
    end
    def client_delete
    end
    def client_delete_everything
    end
    def client_get
    end
    def client_get_by_username name
      connection.call("client_get_by_username", message: {"session_id" => session_id, "username" => name})
    end
    def client_get_id
    end
    def client_get_sites_by_user
    end
    def client_templates_get_all
    end
    def client_update
    end

    # Domains anlegen
    def sites_web_domain_add domain_name
      params = {  "session_id" => session_id, "client_id" => "0"}.merge(Isp3.sites_web_domain_add)
      connection.call("sites_web_domain_add", message: params )
    end

    # Email-Domain anlegen
    def mail_domain_add
      emaildomain = {
        'server_id' => 1,
        'domain' => domainname,
        'active' => 'y'
      }
      client.call("mail_domain_add", message: {"session_id" => session_id, "client_id" => "1"}.merge(emaildomain))
    end
  end
end
