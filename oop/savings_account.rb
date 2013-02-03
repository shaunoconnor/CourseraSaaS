# savings_account.rb

class SavingsAccount # < Account

  def initialize(starting_balance=100)
    @balance = starting_balance
  end

  attr_accessor :balance

  def balance
    @balance
    # puts @balance
  end

  def balance=(new_amount)
    @balance = new_amount
  end

  def deposit(amount)
    @balance += amount
  end

  @@bank_name = 'mybank.com.au'

  def self.bank_name
    @@bank_name
  end

end

class Numeric
  
  def euros
   self * 1.3
  end

end

class Numeric

  def method_missing(method_id)

    if method_id.to_s == 'euro'
      self.send('euros')
    else
      super
    end

  end
  
end

class Numeric

  @@currencies = { 'yen' => 0.013, 'euro' => 1.29, 'rupee' => 0.019  }

  def method_missing( method_id )
    
    singular_currency = method_id.to_s.gsub(/s$/) { '' }

    if currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
end