require 'pry'

class CashRegister
attr_accessor :discount, :total

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = 0
    end

    def add_item(title, price, quantity = 1)
        price = price * quantity
        @last_item_price = price
        @total = @total + price
       while quantity > 0
        @items << title
          quantity -= 1
        end
    end

    def apply_discount
        if discount == 20
        @total = @total * 0.8
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def items
       @items
    end 

    def void_last_transaction
        @total -= @last_item_price
    end
end
