require 'rails_helper'
require 'pp'

describe PrimeFactorsController, type: :controller do

  describe "GET #generate" do

    it "has a 200 status code" do
      get :generate
      expect(response.status).to eq(200)
    end

    it "returns json data" do
      get :generate
      expect(response.content_type).to eq "application/json"
    end

  end

end
