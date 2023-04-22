# frozen_string_literal: true
require_relative "Buranya/version"
require 'httparty'

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
