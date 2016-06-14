require 'rails_helper'

class FakeController < ApplicationController
  include Factorization
end

describe Factorization do

  before(:each) do
    @controller = FakeController.new
  end

  describe "#prime_factors" do

    it "returns an empty array if no input is given" do
      expect(@controller.prime_factors).to eq []
    end

    it "returns an empty array if a nil input is given" do
      expect(@controller.prime_factors(nil)).to eq []
    end

    it "returns an empty array if the number 0 is given" do
      expect(@controller.prime_factors(0)).to eq []
    end

    it "returns an empty array if the number 1 is given" do
      expect(@controller.prime_factors(1)).to eq []
    end

    it "returns an empty array if a negative number is given" do
      expect(@controller.prime_factors(-12)).to eq []
    end

    it "returns [[2,1]] if the number 2 is given" do
      expect(@controller.prime_factors(2)).to eq [[2,1]]
    end

    it "returns [[3,1]] if the number 3 is given" do
      expect(@controller.prime_factors(3)).to eq [[3,1]]
    end

    it "returns [[2,2]] if the number 4 is given" do
      expect(@controller.prime_factors(4)).to eq [[2,2]]
    end

    it "returns [[2,1], [7,1], [89,1]] if the number 1246 is given" do
      expect(@controller.prime_factors(1246)).to eq [[2,1], [7,1], [89,1]]
    end

    it "returns [[2,23], [3,1], [7,4]] if the number 60423143424 is given" do
      expect(@controller.prime_factors(60423143424)).to eq [[2,23], [3,1], [7,4]]
    end

  end

end