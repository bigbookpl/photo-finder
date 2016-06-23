class Crawler

  def get_sub_directories(path)
    Dir[ File.join(path,'**/') ]
  end

end