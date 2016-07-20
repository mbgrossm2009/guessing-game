require "pry"
puts "What difficulty would you like to play? (Easy or Hard)"
difficulty = gets.chomp.downcase

score = 0
if difficulty == "easy"
  random_number = rand(10) + 1
  puts "I'm thinking of a random number 1-10; Can you guess what i am thinking of?"

elsif difficulty == "hard"
  random_number = rand(20) + 1
  puts "I'm thinking of a random number 1-20; Can you guess what i am thinking of?"
end

score += 1

guess = gets.chomp.to_s

while guess != random_number.to_s
  puts "guess again"
  score += 1
  guess = gets.chomp.to_s
end
puts "you got it! your score was: #{score.to_s}"
