require 'prime'

module Factorization

  def prime_factors(number = 0)
    if valid_number?(number)
      factors = []
      Prime.prime_division(number).each do |ary|
        ary.last.times { factors << ary.first }
      end
      return factors
    else
      return []
    end
  end

  private

  def valid_number?(number)
    return false if number.nil?
    return false if number <= 0
    return true
  end

end