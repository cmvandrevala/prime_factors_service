require 'rails_helper'

describe PrimeFactorsController, :type => :routing do

  describe "routes" do

    it "#generate" do
      expect(:get => "/").to route_to("prime_factors#generate", :format => :json)
    end

  end

end