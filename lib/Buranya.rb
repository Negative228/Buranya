# frozen_string_literal: true

require_relative "Buranya/version"
require 'httparty'
require 'launchy'

module Buranya
  class Error < StandardError; end

  #module MemMethods

    def self.num_facts(num='',type='')
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
        return response.body
      else
        return response.code
      end
    end
    
    def self.cat_pic(breed='abyssinian')
      # use name of the cat breed in english lowercase to get image
      # you may use default ninja api key for this function or use the  one in your profile at api-ninjas.com
      response = HTTParty.get("https://api.api-ninjas.com/v1/cats?name=#{breed.to_s}",
                              headers: {'X-Api-Key': 'wCwPBOjfVh4Sd6+wk5qlag==iTrhbDSMz9f3ppXh'})

      if response.code == 200
        data = JSON.parse(response.body)[0]
        if data != nil
          Launchy.open(data["image_link"])
          puts "image is opened in your default browser :3"
          return data["image_link"]
        else
          return "Wrong breed name"
          #puts 'Wrong breed name'
        end
      else
        return response.code
        #puts 'Error:', response.code, response.body
      end

    end


    def self.cat_breed_review(breed='abyssinian')
      # use name of the cat breed in english lowercase to get full review + image
      # you may use default ninja api key for this function or use the  one in your profile at api-ninjas.com
      response = HTTParty.get("https://api.api-ninjas.com/v1/cats?name=#{breed}",
                              headers: {'X-Api-Key': 'wCwPBOjfVh4Sd6+wk5qlag==iTrhbDSMz9f3ppXh'})

      if response.code == 200
        data = JSON.parse(response.body)[0]
        if data != nil

          #data.each do |key, val|
          #case
          #when key != "image_link"
          #puts "#{breed}s #{key}>>> #{val}\n"
          #sleep 0.5
          #end
          #end

          #puts "Image of the #{breed} wil be opened in your default browser in 3 seconds"
          #sleep 3

          #Launchy.open(data["image_link"])
          #puts "image is opened in your default browser :3"
          return data
        else
          return "Wrong breed name"
          #puts 'Wrong breed name'
        end
      else
        return response.code
        #puts 'Error:', response.code, response.body
      end
    end
    
    def self.jokes(j_type) # you can choose one of this types: 1) general; 2) programming.

      response = HTTParty.get('https://official-joke-api.appspot.com/jokes/' + j_type.to_s + '/random')

      if response.code == 200
        if response.body != "[]"
          joke = JSON.parse(response.body)[0]["setup"] + "\n" + JSON.parse(response.body)[0]["punchline"]
        else return "no such joke type"
        end
      else
        return response.code
      end
      return joke
    end
  #end
  
end
