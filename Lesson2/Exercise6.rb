receipt = Hash.new { |a,b| a[b] = {} }

loop do
  print 'Введите наименование товара для тобавления в корзину или "стоп", чтобы закончить: '
  product = gets.chomp
  break if product == 'стоп'

  print 'Введите стоимость единицы товара: '
  price = gets.chomp.to_f

  print 'Введите количество товара: '
  numbers = gets.chomp.to_f

  price_numbers = { price => numbers}
  receipt[product] = receipt[product].merge(price_numbers)
end

if receipt.empty?
  puts 'Вы не добавили товара в корзину'
else
  total_price = 0

  receipt.each do |a, b|
    puts "\n\n#{a}"
    goods_price = 0
    v.each do |aa, bb|
      puts "Цена: #{aa} Количество: #{bb}"
      goods_price += (aa * bb)
      total_price += goods_price
    end

    puts "\nИтого за #{k} = #{goods_price}"
  end

  puts "\nИтого за весь чек = #{total_price}"
end