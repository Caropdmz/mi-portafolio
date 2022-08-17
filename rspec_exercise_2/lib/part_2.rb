def palindrome?(str)
  new_str = ''
  i = str.length-1
  while i >= 0
    new_str << str[i]
    i -= 1
  end
  if new_str == str
    return true
  else return false
  end
end

def substrings(string)
  subs = []

  (0...string.length).each do |start_idx|
    (start_idx...string.length).each do |end_idx|
      subs << string[start_idx..end_idx]
    end
  end

  subs
end

def palindrome_substrings(stri)
  n_a = []
  ar = substrings(stri)
  ar.each do |ele|
    if palindrome?(ele)
      if ele.length > 1
        n_a << ele
      end
    end
  end
  return n_a
end



