puts "Welcome to the Guessing Game!"
secretNum = rand(1..100)
# alternate way to get random number
# secretNum = (1..100).to_a.sample
i = 0
guess = 0
guessArr = []

def get_user_input
  gets.chomp.to_i
end

def check_repeat arr, num
  if arr.include? num
    puts "already guessed this number, wasted guess :("
  end
end

puts "Pick any Number between 1-100"
guess = get_user_input
guessArr.push(guess)

while i < 4
  if guess < secretNum
    i += 1
    puts "guess higher!"
    guess = get_user_input
    check_repeat guessArr, guess
    guessArr.push guess
  elsif guess > secretNum
    i += 1
    puts "guess lower!"
    guess = get_user_input
    check_repeat guessArr, guess
    guessArr.push guess
  else
    break
  end
end

if i >=4 && guess != secretNum
  puts "You lose :("
else
  puts "you got it!"
end
