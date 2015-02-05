def fib(n)
  if n < 3
    return 1
  end

  fib(n-1) + fib(n-2)
end

