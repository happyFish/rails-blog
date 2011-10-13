module FileHandler
  
  def self.upload(file, path, url='')
    Dir.mkdir(path) unless File.directory? path
    
    @file_name = file.original_filename
    @file_path = File.join(path, @file_name)
    @public_url = File.join(url, @file_name)
    
    File.open(@file_path, "wb") { |f| f.write(file.read) }
    
    @file_size = File.size(@file_path)
    return {:file_name=>@file_name, :file_path=>@file_path, :file_type=>file.content_type, :file_size=>@file_size, :public_url=> @public_url}
  end
  
end