puts "Как тебя зовут?"
name = gets.chomp
name.capitalize!
puts "Введите свой рост"
weight = gets.chomp

ideal_weight = (weight.to_i-110)*1.15

if ideal_weight<0
  puts "#{name}, Ваш вес уже оптимальный"
else
  puts "#{name}, Ваш идеальный вес #{ideal_weight} кг"
end