require "pry"

class CashRegister 
  
  attr_accessor :total, :title, :employee_discount, :last_transaction, :items 
  
  
 
  
  def initialize(employee_discount= 0)
    @total = 0 
    @employee_discount = employee_discount
    @items = []
  
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times do 
    @items << title
  end 
    self.last_transaction == price * quantity
  end
  
  def apply_discount
    if @employee_discount != 0 
      @total = ((@total * 80)/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total = @total - @last_transaction
  end
  
end 
