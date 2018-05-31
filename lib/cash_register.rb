## defining my cash register class which will:
## 1. Add items of varying quantities and prices
## 2. Calculate discounts
## 3. Keep track of what's been added to it
## 4. Void the last transaction
class CashRegister

  attr_accessor :discount, :total, :last_item
  @@items = []
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total = self.total + (price * quantity)
    @last_item = price
    self.class.items << title
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      self.total = self.total * (100 - @discount) / 100
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @@items
  end

  def total
    @total
  end

end
