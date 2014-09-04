require_relative './album.rb'
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

    def find_album(album_name)
      name = album_name.downcase
      albums.detect{|album| album.title.downcase == name}
    end

    def albums
      @albums ||= @client.albums.get.map{|album| Album.new(@client, album)}
    end

  end
end
