# require modules here


def load_library(str)
  result = {:get_meaning => {}, :get_emoticon => {}}
  require "yaml"
  library = YAML.load_file(str)
  library.each do |key, value| 
    result[:get_meaning][value[1]] = key
    result[:get_emoticon][value[0]] = value[1]
  end
  result
end

def get_japanese_emoticon(path, emoji)
  lib = load_library(path)
  return = lib[:get_emoticon][emoji] 
  if return == nil do
    return = "Sorry!, no emoji"
  end
  return
end

def get_english_meaning
  # code goes here
end

