# frozen_string_literal: true

require_relative "Buranya/version"
require 'httparty'

module Buranya
  class Error < StandardError; end

  module MemMethods

    def facts(num='',type='')
      #"Hi! You can choose one of four types of facts:
      # 'math'
      # 'date'
      # 'year'
      # If you don`t need a definite type of fact choose nothing"

      if (num=='')
        response = HTTParty.get('http://numbersapi.com/' + rand(max=10000).to_s)
      else
        response = HTTParty.get('http://numbersapi.com/' + num.to_s + '/' + type.to_s)
      end

      if response.code == 200
        puts (response.body)
      else
        puts 'Error:', response.code, response.body
      end

    end
    
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


