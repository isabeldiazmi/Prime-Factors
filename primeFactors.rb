def prime_factors(num)
  primos = [2,3,5,7,11,13,17,19,23]
  primo = primos.first
  resp = []
  while num > 1
    if num % primo == 0
      num = num / primo
      resp.push(primo)
    else
      primos.delete_at(0)
      primo = primos.first
    end
  end
  resp
end
p prime_factors(4) == [2, 2]
p prime_factors(9) == [3, 3]
p prime_factors(12) == [2, 2, 3]
p prime_factors(34) == [2, 17]