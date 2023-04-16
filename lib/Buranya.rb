# frozen_string_literal: true

require_relative "Buranya/version"
require 'httparty'

module Buranya
  class Error < StandardError; end

  module MemMethods
    def jokes

      response = HTTParty.get('https://official-joke-api.appspot.com/random_joke')
      if response.code == 200
        puts JSON.parse(response.body)["setup"]
        puts JSON.parse(response.body)["punchline"]
      else
      puts 'Error:', response.code, response.body
      end
    end
  end
end


