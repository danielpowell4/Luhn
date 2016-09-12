module Luhn
  def self.is_valid?(number)
    a = number.to_s.chars.reverse.map{|s| s.to_i}
    a.each_with_index do |n, i|
        a[i] = ((i%2 == 0) ? n : n*2)
    end
    sum = a.map{ |n| (n > 9) ? n - 9 : n}.reduce(:+)
    (sum%10 == 0) ? true : false
  end
end
