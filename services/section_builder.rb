class ServiceBuilder

  def build
    Dir.entries("./views/sections").select{ |e| 
      e.include?("erb")
    }.map{ |e| 
      e.gsub(".erb", "").slice(1..-1)
    }.map{ |e| 
      e.gsub("_", " ")
    }
  end

end