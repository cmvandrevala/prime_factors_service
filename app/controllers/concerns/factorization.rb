require 'prime'

module Factorization

  def prime_factors(number = 0)
    if valid_number?(number)
      factors = []
      Prime.prime_division(number.to_i).each do |ary|
        ary.last.times { factors << ary.first }
      end
      return factors
    else
      return []
    end
  end

  private

  def valid_number?(number)
    return false if number.to_i <= 0
    return false if number.to_s.include? "."
    return false if /\D/.match number.to_s
    return true
  end

end