var = 0
a = var
b = []
while var > 36
    var = var + 2
    a = var
    b << a.to_s
end
puts b.inspect