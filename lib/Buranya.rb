# frozen_string_literal: true

require "httparty"
require "Buranya/version"
require "Buranya/client"

module Buranya
  class Error < StandardError; end
  # Your code goes here...

  def cat_pic(breed)
    response = HTTParty.get("https://api.api-ninjas.com/v1/cats?name=#{breed}" , headers: {'X-Api-Key': 'wCwPBOjfVh4Sd6+wk5qlag==iTrhbDSMz9f3ppXh'})
    if response.code == 200
      puts response.body
    else
      puts 'Error:', response.code, response.body
    end
  end
end
