class PrimeFactorsController < ApplicationController
  include Factorization

  def generate
    render :json => prime_factors(params[:number])
  end

end
