class CashRegister
    attr_accessor :discount, :total, :previous_total, :items, :last_total
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end
    def add_item(title, price, quantity=1)
        @last_total = @total
        @total += price * quantity 
        quantity.times do
            @items << title            
        end
    end
    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        end
        @total*=(1.0-(discount*0.01))
        "After the discount, the total comes to $#{@total.to_i}."
    end
    def void_last_transaction
        @total = last_total
    end
end