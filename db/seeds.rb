require 'faker'

rand(10..30) time do 

  q = Questions.create(title: Faker::Lorem.words(rand(1..10)).join(""), 
    body: Faker::Lorem.words(rand(1..10)).join("\n"))

  rand(3..6).times do

    q.tags.create(name: Faker::Lorem.words(rand(1..10)).join(""))
  
end

puts "Seed finished"

puts "#{Question.count} posts created"
puts "#{Tag.count} tags created"