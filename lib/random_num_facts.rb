# frozen_string_literal: true
require_relative "Buranya/version"
require 'httparty'

    def facts(num)

      response = HTTParty.get('http://numbersapi.com/' + num.to_s)
      if response.code == 200
        puts (response.body)
      else
        puts 'Error:', response.code, response.body
      end

    end

#facts(15)