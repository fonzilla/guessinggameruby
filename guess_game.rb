puts "Welcome to the Guessing Game!"
secretNum = rand(1..100)
# print secretNum
puts "Pick any Number between 1-100"
guess = gets.chomp.to_i

$i = 0

while $i < 4
  if guess < secretNum
    $i += 1
    puts "guess higher!"
    guess = gets.chomp.to_i
  elsif guess > secretNum
    $i += 1
    puts "guess lower!"
    guess = gets.chomp.to_i
  else
    break
  end
end

if $i >=4 && guess != secretNum
  puts "You lose :("
else
  puts "you got it!"
end
