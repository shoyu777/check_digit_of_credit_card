require "check_digit_of_credit_card/version"

module CheckDigitOfCreditCard
  def self.check_digit(num = 0)

    if !(num.integer?) || !(num.to_s.size >= 14 && num.to_s.size <= 16)
      raise ArgumentError, "Please set interger with 14-16 digits."
    end

    item1 = num.to_s.split("").each_slice(2).map(&:first).map(&:to_i).map{|n| n*2}
    item2 = num.to_s.split("").each_slice(2).map(&:last).map(&:to_i)

    sum1 = 0
    item1.each do |n|
      if n >= 10
        sum1 += (n/10 + n%10)
      else
        sum1 += n
      end
    end

    sum2 = 0
    item2.each do |n|
      sum2 += n
    end
    (sum1 + sum2) % 10 == 0
  end
end
