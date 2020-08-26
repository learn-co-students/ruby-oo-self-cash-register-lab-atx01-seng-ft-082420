require 'pry'

class CashRegister
    attr_accessor :discount, :price, :total, :cart, :title, :quantity, :last_item

    def initialize (discount = 0)
        total = 0
        @total = total
        @discount = discount
        @cart = []
    end

    def add_item (title, price, quantity = 1.0)
        @quantity = quantity
        self.last_item = (quantity * price)
        self.total += (quantity * price)
        i = quantity
        while i >= 1 do
            @cart << title
            i -= 1
        end
    end

    def apply_discount
        if self.discount != 0
            self.total -= ((self.total * self.discount)/100.0)
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
            
        end
    end

    def items
        @cart
    end

    def void_last_transaction
        self.total = self.total - self.last_item
    end

end