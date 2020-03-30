require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :items
  
  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @title = title 
    @price = price
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << items
        counter += 1
      end
    else
      @items << items
    end
  end
  
  def apply_discount
    if @discount != 0
      self.total *= (1 - (@discount / 100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end

  
end
