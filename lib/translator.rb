# require modules here


def load_library(str)
  result = {:get_meaning => {}, :get_emoitcon = {}}
  require "yaml"
  library = YAML.load_file(str)
  library.each do |key, value| 
    result[:get_meaning][value[1]] = key   
  end
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

