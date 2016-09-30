class CashRegister

attr_reader :total, :discount

  def initialize(*discount)
    @total = 0
    @discount = discount[0].to_f
    @items = []

  end

  def total=(num)
    @total = num

  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @items << title
      @price = price
    end
  end


  def apply_discount
    origin_total = @total
    @total = (@total - (@total *  (@discount / 100))).to_i
      if origin_total == @total
         "There is no discount to apply."
      else
        "After the discount, the total comes to $#{@total}."
     end
  end


  def items
    @items
  end

  def void_last_transaction

    @total -= @price

  end

end
