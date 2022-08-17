def partition(array, num)
  new_array = Array.new(2){Array.new}

  array.each_with_index do |ele, i|

    if ele < num
      new_array[0] << ele
    else
      new_array[1] << ele
    end
  end
  new_array
end

def merge(hash1, hash2)
  new_hash = {}
  hash1.each { |key, val|
    if hash2.has_key?(key)
      new_hash[key] = hash2[key]
    else
      new_hash[key] = val
    end
  }
  hash2.each { |key, val|
    if !hash1.has_key?(key)
      new_hash[key] = val
    end
  }
  return new_hash
end

def censor(sent, array)
  vowels = 'aeiou'
  array.each do |ele|
    if sent.downcase.include?(ele) 
      
      ele.each_char.with_index do |char, i|

        if vowels.include?(char.downcase) 
          sent[char] = "*"
        end
      end
    end
  end
  return sent
end

def power_of_two?(num)
  product = 1

  while product < num
    product *= 2
  end

  product == num
end
