module SmugMugger
  class Client

    attr_reader :client

    def initialize(api_key, oauth_secret, user_token, user_secret)
      @client = SmugMug::Client.new(api_key: api_key,
                                    oauth_secret: oauth_secret,
                                    user: {
                                      token: user_token,
                                      secret: user_secret
                                    })
    end

    def albums
      @client.albums
    end

  end
end
