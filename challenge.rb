
def program
  puts "Enter a word to check if its a palindrome"
  @input = gets.strip
  palindrome(@input)
  ask_again
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

def ask_again
  puts "Would you like to check another word? Type exit to quit."
  @input = gets.strip
  if @input.downcase === "exit"
    exit 0
  end
  palindrome(@input)
  ask_again
end

program
