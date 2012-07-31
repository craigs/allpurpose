require "httparty"
require 'open-uri'

module Allpurpose

  class Quote

    include HTTParty
    format :json
    base_uri "https://www.allpurposeremovals.com.au/api/quote/json"

    attr_accessor :suburb, :post_code, :volume, :amount

    def initialize(suburb, post_code, volume, amount=0)
      self.suburb = suburb
      self.post_code = post_code
      self.volume = volume
      self.amount = amount
    end

    def self.quote(suburb, post_code, volume)

      response = get("/#{URI::encode(suburb)}/#{post_code}/#{volume}")

      if response.success?
        if response.parsed_response.nil?
          nil
        else
          resp = response.parsed_response["ShippingQuote"]
          self.new(resp["Suburb"], resp["Postcode"].to_i, volume, resp["Quote"].to_f)
        end
      else
        raise response.response    
      end

    end

  end
  
end