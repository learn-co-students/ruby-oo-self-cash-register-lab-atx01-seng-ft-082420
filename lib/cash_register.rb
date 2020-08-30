require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=0, total=0)
        @total = total
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity

        amount = 0
        while amount < quantity
            items << title
            amount += 1
        end
        self.last_item = price * quantity
    end

    def apply_discount
        if  discount == 20
            self.total = (total * (1 - (discount.to_f / 100)))
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = total - self.last_item
    end
end
