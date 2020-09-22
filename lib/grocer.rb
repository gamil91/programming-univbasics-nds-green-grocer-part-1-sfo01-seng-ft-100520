require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |item_hash| 
    if item_hash[:item] == name
      return item_hash
    end 
  end  
  return nil
end

 def consolidate_cart(cart)
  consolidated_cart = []

  cart.each do |item_hash|
    if consolidated_cart == []
      item_hash[:count] = 1 
      consolidated_cart << item_hash
    end
  end 
  
  i = 1    
  while i < cart.length do
    consolidated_cart.each do |sorted_hash|
      
      if sorted_hash[:item] == cart[i][:item]
        sorted_hash[:count] += 1 
      else
        cart[i][:count] = 1
        consolidated_cart << cart[i]
      end
    end
  i += 1 
  end
 
  consolidated_cart
end

   