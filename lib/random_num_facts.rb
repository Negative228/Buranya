# frozen_string_literal: true
require 'nokogiri'

module GrooveHQ
  class Client

    module Rand_Num

      def facts(num)
        url = 'http://numbersapi.com/' + to_str(num)
        tt = open(url)
        f = self.class.get("http://numbersapi.com/" + to_str(num), { query: options })
        puts f.parsed_response["tickets"]
      end

    end

  end
end

