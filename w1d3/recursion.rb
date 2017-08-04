def sum_to(n)
  return nil if n < 0
  return n if n <= 1
  n + sum_to(n - 1)
end

def add_numbers(nums_array)
  return nums_array[0] if nums_array.length <= 1
   nums_array.first + add_numbers(nums_array[1..-1])
end

def gamma_fnc(n)
  return n if n <= 1
  (n - 1) * gamma_fnc(n - 1)
end

def ice_cream_shop(flavors, favorite)
  if flavors[0] == favorite
    return true
  elsif flavors.empty?
    return false
  end
  ice_cream_shop(flavors[1..-1], favorite)
end

def reverse(string)
  return string if string.length <= 1
  reverse(string[1..-1]) + string[0]
end
