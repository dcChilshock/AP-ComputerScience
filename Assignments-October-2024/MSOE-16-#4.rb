puts "Insert a number between 1-10,000"
n = gets.chomp.to_i
#find prime factors of a nuumber so 10
array = []
p = 2
o = 0
while o != 1
    n = n / p
    array.push(p.to_s)
    if n == Integer.superclass
        p = p
    elsif n == Float.superclass
        n = n * p
        p = p + 1
        array.pop
    end
    if p == 10
        o = 1
    else
        o = 0
    end
    print array
end

for array in array do
    puts array
  end
#1.kind_of? Integer
#1.5.kind_of? Float