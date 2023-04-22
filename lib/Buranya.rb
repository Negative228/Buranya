# frozen_string_literal: true

require_relative "Buranya/version"
require 'httparty'
require 'launchy'

module Buranya
  class Error < StandardError; end

  module MemMethods
    def cat_pic(breed)
      response = HTTParty.get("https://api.api-ninjas.com/v1/cats?name=#{breed}",
                              headers: {'X-Api-Key': 'wCwPBOjfVh4Sd6+wk5qlag==iTrhbDSMz9f3ppXh'})

      if response.code == 200
        data = JSON.parse(response.body)[0]
        if data != nil
          Launchy.open(data["image_link"])
          puts "image is opened in your default browser :3"
        else
          puts 'Wrong breed name'
        end
      else
        puts 'Error:', response.code, response.body
      end
      
    end

    def cat_breed_review(breed)
      response = HTTParty.get("https://api.api-ninjas.com/v1/cats?name=#{breed}",
                              headers: {'X-Api-Key': 'wCwPBOjfVh4Sd6+wk5qlag==iTrhbDSMz9f3ppXh'})

      if response.code == 200
        data = JSON.parse(response.body)[0]
        if data != nil

          data.each do |key, val|
            case
            when key != "image_link"
              puts "#{breed}s #{key}>>> #{val}\n"
              sleep 0.5
            end
          end

          puts "Image of the #{breed} wil be opened in your default browser in 3 seconds"
          sleep 3

          Launchy.open(data["image_link"])
          puts "image is opened in your default browser :3"

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


