class Cart
  attr_reader :items   
  
  def initialize
    @items = []
  end
  
  def add_product(product)
    current_item = @items.find {|item| item.product == product}
    if current_item
      current_item.increment_quantity
    else
      current_item = CartItem.new(product) 
      @items << current_item
    end
    current_item
  end
  
  def remove_item(target_item)
    current_item = @items.find {|item| item.title == target_item }
    if current_item
      count=current_item.decrement_quantity
      if count==0
        @items.delete(current_item)
      end
    end
    current_item
  end

  def total_items
    @items.sum { |item| item.quantity }
  end
    
  def total_price
    @items.sum { |item| item.price }
  end
  
end
