def consolidate_cart(cart)
  final_hash = {}
  cart.each do |element_hash|
    element_name = element_hash.keys[0]
    
    if final_hash.has_key?(element_name)
      final_hash[element_name][:count] += 1
    else
      final_hash[element_name] = element_stats
      final_hash[:count] = 1
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
