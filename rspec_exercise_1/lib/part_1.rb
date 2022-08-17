def average(num_1, num_2)
  (num_1.to_f + num_2) / 2

end

def average_array(array)

  suma = array.sum
  suma.to_f / array.length

end

def repeat(str, num)
  new_str = str*num
end

def yell(str)
  yelled = str.upcase + '!'
end

def alternating_case(sentence)
  arr = sentence.split(" ")
  new_arr = []

  arr.each_with_index do |ele, i|
    if i.even?
      new_arr << ele.upcase

    else
      new_arr << ele.downcase
   end
  end
  return new_arr.join(" ")

end

#p alternating_case("hola este es mi array")
