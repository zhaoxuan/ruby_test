
params = {"filedata_size"=>"104135",
          "filedata_path"=>"/tmp/upload/4/0000000014",
          "filedata_name"=>"Screenshot from 2012-06-18 14:48:37.png",
          "filedata_content_type"=>"application/octet-stream",
          "version"=>"v1",
          "Upload"=>"Submit Query",
          "filedata_md5"=>"16ef03fb7f0a09efc95b5403bc6d985c",
          "filedata_uuid"=>"true"}

params_1 = {"file_size"=>"104135",
            "file_path"=>"/tmp/upload/4/0000000014",
            "file_name"=>"Screenshot from 2012-06-18 14:48:37.png",
            "file_content_type"=>"application/octet-stream",
            "version"=>"v1",
            "Upload"=>"Submit Query",
            "file_md5"=>"16ef03fb7f0a09efc95b5403bc6d985c",
            "file_uuid"=>"true"}


def return_key_with_regexp(keys_array, regular_string)
  keys_array.each do |str|
    result = Regexp.new(regular_string).match(str).to_s
    return result if result != ""
  end
end

def get_hash_value_with_regexp(hash, regular_string)
  key = return_key_with_regexp(hash.keys, regular_string)
  return hash[key]
end

p get_hash_value_with_regexp(params, ".*name")