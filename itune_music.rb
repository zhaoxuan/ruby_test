require "fileutils" 

file_path = "/Users/john/Music/iTunes/Music"


def mv_m(folders)
  Dir.foreach(folders) do |file|
    next if file == '.' or file == '..'
    path = folders + "/" + file

    if File.directory?(path)
      mv_m(path)
    else
      p path
      new_path = "/Users/john/Music/iTunes/new_music"
      FileUtils.cp(path, new_path + "/" + file)
    end
  end
  
end

mv_m file_path