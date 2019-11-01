# require modules here


def load_library(str)
  result = {:get_meaning => {}, :get_emoticon => {}}
  require "yaml"
  library = YAML.load_file(str)
  library.each do |key, value| 
    result[:get_meaning][value[0]] = key
    result[:get_emoticon][value[1]] = value[0]
  end
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

