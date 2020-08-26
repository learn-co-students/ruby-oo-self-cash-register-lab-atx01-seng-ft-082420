
class CashRegister
    attr_accessor :items, :discount, :total, :last_transaction
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items=[]
        @last_transaction=[]
    end
    def add_item(title, price, quantity=1)
        self.total += price * quantity
        i = quantity 
        while i > 0 do
            items << title
            i -=1
        end
        self.last_transaction=price*quantity
        
    end
    def apply_discount
        if discount > 0
            self.total = total*((100.0-discount.to_f)/100)
            "After the discount, the total comes to $#{(self.total).to_i}."
        else 
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end 

end