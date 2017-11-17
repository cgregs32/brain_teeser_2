require 'pry'

def program
  puts "Enter a word to check if its a palindrome"
  @input = gets.strip
  if (@input.include?(" "))
    multi_word(@input)
  else
    palindrome(@input)
  end
    ask_again
  if @input.downcase === "exit"
    exit 0
  end
end


def palindrome(input)
  empty_array = []
  array = input.downcase.split("")
  while empty_array.length <= input.length
    char = array.pop
    empty_array << char
  end
  if empty_array.join("") == input.downcase
    puts "#{@input} is a palindrome!, YES!"
  else
    puts "NOPE, #{@input} is NOT a palindrome!"
  end
end

# "racecar mom"
def multi_word(input)
    words = input.split(" ")
    words.each_with_index do |word, i|
      puts "Checking word #{i + 1}..."
      palindrome(word)
    end
end

def ask_again
  puts "Would you like to check another word? Type exit to quit."
  program
end

program
