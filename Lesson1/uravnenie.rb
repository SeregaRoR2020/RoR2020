puts 'Введите коэффициент а'
a = gets.chomp.to_f

puts 'Введите коэффициент b'
b = gets.chomp.to_f

puts 'Введите коэффициент c'
c = gets.chomp.to_f

d = ((b**2)-(4 * a * c)).to_f
k = Math.sqrt(d)
if d > 0
  x1 = (-b + k)/(2 * a)
  x2 = (-b - k)/(2 * a)
  puts "Дискриминант больше нуля и корней два - х1=#{x1} и х2=#{x2}"
elsif d == 0
  x1 = (-b + k)/(2 * a)
  puts "Дискриминант равен нулю, корень только один х1=#{x1}"
else
  puts 'Дискриминант меньше нуля, корней нет'
end
