## defining my cash register class which will:
## 1. Add items of varying quantities and prices
## 2. Calculate discounts
## 3. Keep track of what's been added to it
## 4. Void the last transaction
class CashRegister

  attr_accessor :discount, :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total = self.total + (price * quantity)
  end

  def apply_discount
    self.total = self.total * (100 - @discount) / 100
    discounted_total = self.total
    puts "After the discount, the total comes to $#{discounted_total}"
  end

  def total
    @total
  end

end
