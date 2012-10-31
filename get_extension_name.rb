    def get_extension_name(name)
        name.scan(/\.[^\.]+$/)[0]
    end

    def  is_image?(file_name)
      if (file_name =~ /\.(wmv|avi|mpg|3gp|mp4|asf|asx|flv|swf|rmvb|jpg)$/i)
        return true
      else
        return false
      end
    end


    name = "zhaoxuan.jpg.png"

    p get_extension_name(name)
    p is_video?(name)