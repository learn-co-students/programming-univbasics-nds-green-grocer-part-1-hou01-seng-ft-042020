def find_item_by_name_in_collection(name, collection)
  index = 0
  hash = {}
  while collection[index] do 
    if name == collection[index][:item]
      return hash = collection[index]
    end
    index += 1
  end
  nil
end

def consolidate_cart(cart)
  array_unique = []
  index = 0
  while cart[index] do 
    item_hash = find_item_by_name_in_collection(cart[index][:item], array_unique)
    if item_hash 
      item_hash[:count] += 1
    else
      item_hash = cart[index]
      item_hash[:count] = 1
      array_unique << item_hash
    end
    index += 1
  end
  array_unique
end
