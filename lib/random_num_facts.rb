# frozen_string_literal: true
require_relative "lib/Buranya/version"

module GrooveHQ
  class Client

    module Tickets

      def tickets(options = {})
        response = self.class.get("/tickets", { query: options })
        response.parsed_response["tickets"]
      end

    end

  end
end

