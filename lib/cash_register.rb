class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    def initialize(discount=0)
        @total = 0
        @items = []
        @discount = discount
        @last_transaction = []
    end

    def add_item(item, price, quantity=1)
        self.total += (price * quantity)
        if quantity==1
            self.items.push(item)
            self.last_transaction.push(price*quantity)
        else 
            quantity.times do
            @items.push(item)
            self.last_transaction.push(price*quantity)
        end
      
    end
        self.total
    end

    def apply_discount
        
       if discount!= 0
        self.total= self.total - total * discount / 100.00
            "After the discount, the total comes to $#{self.total.to_i}."
            else
            "There is no discount to apply."
        end
    end



    def void_last_transaction
       self.total= self.total - self.last_transaction[-1]
    end
end
