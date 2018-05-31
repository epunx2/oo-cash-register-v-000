## defining my cash register class which will:
## 1. Add items of varying quantities and prices
## 2. Calculate discounts
## 3. Keep track of what's been added to it
## 4. Void the last transaction
class CashRegister

  attr_accessor :discount
  attr_reader :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

end
