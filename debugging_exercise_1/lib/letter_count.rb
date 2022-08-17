# Debug this code to pass rspec! There are 3 mistakes to fix.

# Write a method, letter_count, that accepts a string and char as args.
# The method should return the number of times that the char appears in the string.

require "byebug"

def letter_count(string, char)
    count = 0
    string.each_char do |c|
        if c.downcase == char
            count += 1
        end
    end
    count
end

p letter_count("apple", "p")#o eq(2)
p letter_count("apple", "q")#o eq(0)
p letter_count("MISSIPPI", "i")#).to eq(3)
