# frozen_string_literal: true

require "httparty"
require "Buranya/version"


module Buranya
  class Error < StandardError; end
  # Your code goes here...

  module MemMethods
    def cat_pic(breed)
      response = HTTParty.get("https://api.api-ninjas.com/v1/cats?name=#{breed}",
                              headers: {'X-Api-Key': 'wCwPBOjfVh4Sd6+wk5qlag==iTrhbDSMz9f3ppXh'})

      if response.code == 200
        data = JSON.parse(response.body)[0]
        if data != nil
          puts JSON.parse(response.body)[0]["image_link"]
        else
          puts 'Wrong breed name'
        end
      else
        puts 'Error:', response.code, response.body
      end
    end
  end
end


