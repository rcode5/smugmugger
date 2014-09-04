module SmugMugger

  # after fetching images from an album with the "Heavy" key set true, 
  # available attributes are as follows
  #
  # id
  # Key
  # Type
  # URL
  # LightboxURL
  # TinyURL
  # ThumbURL
  # SmallURL
  # MediumURL
  # LargeURL
  # XLargeURL
  # X2LargeURL
  # X3LargeURL
  # Caption
  # FileName
  # Format
  # Height
  # Keywords
  # LastUpdated
  # Position
  # Serial
  # Size
  # Width

  class Image
    
    def initialize(image_info)
      @info = image_info
    end

    def id
      @info['id']
    end

    def key
      @info['Key']
    end
    
    def tiny_url
      @info["TinyURL"]
    end

    def thumb_url
      @info["ThumbURL"]
    end

    def small_url
      @info["SmallURL"]
    end

    def medium_url
      @info["MediumURL"]
    end

    def large_url
      @info["LargeURL"]
    end

    def xlarge_url
      @info["XLargeURL"]
    end

    def caption
      @info["Caption"]
    end

    def height
      @info["Height"]
    end

    def width
      @info["Width"]
    end
  end
end
