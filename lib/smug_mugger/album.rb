module SmugMugger
  class Album
    
    def initialize(client, album_info)
      @client = client
      @album_info = album_info
    end

    def id
      @album_info['id']
    end
    
    def key
      @album_info['Key']
    end

    def title
      @album_info['Title']
    end

    def images
      resp = @client.images.get(AlbumID: id, AlbumKey: key, Heavy: true)
      resp['Images'].map{|image_info| Image.new image_info }
    end

    def to_s
      {id: id, key: key, title: title}.to_s
    end
  end
end
