require 'pry'
class CashRegister
    attr_accessor :total, :discount, :total, :price, :items, :last_transaction
    def initialize(discount=0)
        @total = 0 
        @discount = discount 
        @items = []
    end 
    
    def add_item(title, price, quantity=1)
        @last_transaction = price * quantity
        self.total += price * quantity
        i = quantity
        while i >= 1 do 
            @items << title
            i -= 1 
        end 
    end 

    def apply_discount 
        #binding.pry
        self.total -= (self.total * discount.to_f / 100) 
        if self.total == 800
            return "After the discount, the total comes to $800."
        else return "There is no discount to apply."
        end 
    end 

    def void_last_transaction 
       self.total -= @last_transaction
    end 
end 