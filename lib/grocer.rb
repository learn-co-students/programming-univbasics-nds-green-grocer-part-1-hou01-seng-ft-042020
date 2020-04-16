require "pry"


def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  found_item = nil
  collection.each do |count|
    if count[:item] == name
      found_item = count
    end
  end
  return found_item
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
item_check = nil
new_cart=[]

  cart.each do |item|
    item_check = find_item_by_name_in_collection(item[:item], new_cart)
    if item_check == nil
      new_item = item
      new_item[:count] = 1
      new_cart << new_item
    else
        new_cart.each do |info|
          if info[:item] == item_check[:item]
            info[:count] += 1
          end
        end
    end
  end
end





#
#
#   new_cart=[] #my new, consolidated cart
#   cart.each do |item_full| #checks thru each item of the incoming cart
#     binding.pry
#     item_hash = {}  # reset a temp hash each time thru
#     item_in_cart = "no" #reset thie variable each time thru
#     new_cart.each do |item_check| #checks thru the new_cart to see if item already exists
#       binding.pry
#       if item_full[:item] == item_check[:item]  #checks if the item from cart is already in new cart
#         item_check[:count] += 1 #if yes, we had a count of +1
#         item_in_cart = "yes"
#         binding.pry
#       end
#       if item_in_cart == "no" #if item was not in new cart,
#         item_hash = find_item_by_name_in_collection(item) # we get the item's hash and put in our temp location
#         item_hash[:count] = 1 #give our temp hash, a key of count to be a value of 1
#         new_cart << item_hash #add the items hash onto our new cart hash
#         binding.pry
#       end
#     end
#   end
# end
