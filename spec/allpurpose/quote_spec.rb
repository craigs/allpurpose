require 'turn/autorun'

require_relative "../../lib/allpurpose/quote"

describe "AllPurpose Quote" do

  describe "when a suburb exists" do
    it "is must equal 75" do
      
      suburb = 'Brisbane Market'
      post_code = 4106 
      volume = 1.58
      
      q = Allpurpose::Quote.quote(suburb, post_code, volume)
      
      q.amount.must_equal 75.00
      q.amount.must_be_kind_of Float
      q.suburb.must_equal suburb.upcase
      q.post_code.must_equal post_code
      
    end
  end

  describe "when volume is zero" do
    it "is must be nil" do
      q = Allpurpose::Quote.quote('Brisbane Market', 4106, 0)
      q.must_be_nil
    end
  end

end