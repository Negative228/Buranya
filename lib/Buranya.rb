# frozen_string_literal: true

require_relative "Buranya/version"
require 'httparty'

module Buranya
  class Error < StandardError; end

  module MemMethods
    def jokes

      response = HTTParty.get('https://official-joke-api.appspot.com/random_joke')
      if response.code == 200
        puts response.body.setup
        puts response.body.punchline
      end
    end
  end
end


