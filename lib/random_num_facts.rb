# frozen_string_literal: true
require 'json'
require 'nokogiri'
require 'open-uri'


      def facts(num)
        url = 'http://numbersapi.com/' + num.to_s
        html = open(url)

        puts JSON.pretty_generate(url)
        #f = self.class.get("http://numbersapi.com/" + to_str(num), { query: options })
        #puts f.parsed_response["tickets"]
      end

facts(15)