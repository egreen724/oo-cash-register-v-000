class CashRegister 
  
  attr_accessor :total, :employee_discount, :title, :discount 
  
  @@items = []
  @@total = []
  
  def initialize(total = 0, employee_discount = 0)
    self.total = total 
    self.employee_discount = employee_discount
  
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
     self.total = @total + (price * quantity)
    @@items << self.title 
    @@total << @total 
  end
  
  def apply_discount
    if @employee_discount == 20
      @total = ((@total * 80)/100).to_f 
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items 
    @@items 
  end 
  
  def void_last_transaction
    self.total.delete_at(-1)
    self.total 
  end
  
end 
