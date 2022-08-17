# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
def largest_prime_factor(num)
  array = []
  array_prime = []
  (1..num).each do |divisor|
    if (num % divisor == 0)
        array << divisor
    end
  end
  array.each do |ele|
    if prime?(ele)
      array_prime << ele
    end
  end

  array_prime.max
end
def prime?(num)
  return false if num < 2

  (2...num).each do |factor|
      if num % factor == 0
          return false
      end
  end
  return true
end

def unique_chars?(str)
  a = str.split('')
  a.each do |ele|
    if letter_count(str, ele) > 1
      return false
    end
  end
  return true
end

def letter_count(string, char)
  count = 0
  string.each_char do |c|
      if c.downcase == char
          count += 1
      end
  end
  count
end

def dupe_indices(array)
  hash = {}
  indices = []
  array.each_with_index do |ele,i|
    if letter_count_array(array, ele) > 1
      indices = get_index(array, ele)
      hash[ele] = indices

    end

  end
  return hash
end

def get_index(array, char)
  i = 0
  index_array = []
  while i < array.length
    if array[i] == char
      index_array << i
    end
    i += 1
  end
  return index_array
end


def letter_count_array(array, char)
  count = 0
  array.each do |c|

    if c.downcase == char
      count += 1
    end
  end
  count
end

def ana_array(array_1, array_2)
  s_array1 = array_1.join("")
  s_array2 = array_2.join("")
  return char_count(s_array1) == char_count(s_array2)
end

def char_count(word)
  count = Hash.new(0)
  word.each_char { |char| count[char] += 1 }
  return count
end

