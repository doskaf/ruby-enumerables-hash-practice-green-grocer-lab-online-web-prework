def consolidate_cart(cart)
  final_hash = {}
  cart.each do |element_hash|
    element_name = element_hash.keys[0]
    element_stats = element_hash.values[0]
    
    if final_hash.hash_key?(element_name)
      final_hash[element_name][:count] += 1
    else
      final_hash[element_name] = {
        count: 1,
        price: element_stats[:price],
        clearance: element_stats[:clearance]
      }
    end
  end
  final_hash
end

def apply_coupons(cart, coupons)

end

def apply_clearance(cart)

end

def checkout(cart, coupons)

end
