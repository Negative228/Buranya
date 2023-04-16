# frozen_string_literal: true

require "httparty"
require "Buranya/version"
require "Buranya/client"

module Buranya
  class Error < StandardError; end
  # Your code goes here...

  def cat_pic(breed)
    response = HTTParty.get("https://api.api-ninjas.com/v1/cats?name=#{breed}")
    puts response.body if response.code == 200

  end
end
