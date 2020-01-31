puts 'Как тебя зовут?'
name = gets.chomp.capitalize!

puts 'Введите свой рост'
weight = gets.chomp.to_i

ideal_weight = (weight - 110) * 1.15

if ideal_weight < 0
  puts "#{name}, Ваш вес уже оптимальный"
else
  puts "#{name}, Ваш идеальный вес #{ideal_weight} кг"
end