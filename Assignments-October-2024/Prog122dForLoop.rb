var = -12
x = 0
array = [] 
while var < 17
    num = (var**6)-(3*var**5)-(93*var**4)+(87*var**3)+(1596*var**2)-(1380*var) - (2800)
    array.push(num.to_s)
    x = x + 1
    var = var + 1
end

for array in array do
  puts array
end