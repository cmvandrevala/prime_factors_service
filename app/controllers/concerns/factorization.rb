require 'prime'

module Factorization

  def prime_factors(number = 0)
    return Prime.prime_division(number) if valid_number?(number)
    return []
  end

  private

  def valid_number?(number)
    return false if number.nil?
    return false if number <= 0
    true
  end

end