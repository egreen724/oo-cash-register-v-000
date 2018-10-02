require "pry"

class CashRegister 
  
  attr_accessor :total, :title, :employee_discount, :last_transaction, :items 
  
  
 
  
  def initialize(employee_discount=0)
    @total = 0 
    @employee_discount = employee_discount
    @items = []
  
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price.to_f * quantity)
    @@items << title 
    @last_transaction == price  
  end
  
  def apply_discount
    if @employee_discount == 20
      binding.pry 
      @total = ((@total * 80)/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items 
    @@items 
  end 
  
  def void_last_transaction
    @total = @total - @last_transaction
  end
  
end 
