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

    def find_album_by_id_and_key(album_id, album_key)
      album_data = @client.albums.getInfo(AlbumID: album_id, AlbumKey: album_key)
      Album.new(@client, album_data) if album_data
    end

    def albums(opts = nil)
      opts ||= {}
      @albums ||= @client.albums.get.map{|album| Album.new(@client, album)}
    end

  end
end
