fibonachi = [0, 1]

while (fib = fibonachi[-1] + fibonachi[-2]) < 100
  fibonachi << fib
end
puts fibonachi