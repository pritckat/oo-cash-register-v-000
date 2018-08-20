class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount * .01
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    if @discount != 0
      @total = @total * @discount
    end
  end

end
