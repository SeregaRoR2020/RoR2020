puts "Введите сторону a треугольника"
a = gets.chomp
a = a.to_f
puts "Введите сторону b треугольника"
b = gets.chomp
b = b.to_f
puts "Введите сторону c треугольника"
c = gets.chomp
c = c.to_f

if (((a>b)&&(a>c))&&((b**2)+(c**2)==(a**2)))==true
	puts "Треугольник является прямоугольным"
elsif (((b>a)&&(b>c))&&((a**2)+(c**2)==(b**2)))==true
	puts "Треугольник является прямоугольным"
elsif (((c>a)&&(c>b))&&((a**2)+(b**2)==(c**2)))==true
	puts "Треугольник является прямоугольным"
elsif ((a==b)&&(a==c))==true
	puts "Треугольник является равносторонним и равнобедренным"
elsif ((a==b)||(a==c)||(b==c))==true
	puts "Треугольник является равнобедренным"
else
	puts "Треугольник не является ни равносторонным, ни равнобедренным, ни прямоугольным"
end