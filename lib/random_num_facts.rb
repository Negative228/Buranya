# frozen_string_literal: true
require 'json'
require 'nokogiri'
require 'open-uri'


      def facts()
        url = 'http://numbersapi.com/#random/'
        html = open(url).read
        doc = Nokogiri::HTML(html)

        fact = ''
        doc.css('.api-result').each do |res|
          text = res
          fact = fact + res

        end


        puts JSON.pretty_generate(fact)

      end

facts()