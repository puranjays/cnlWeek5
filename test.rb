a = ('a'..'z').to_a
b = ''
5.times {b << a[rand(26)]}

print b
