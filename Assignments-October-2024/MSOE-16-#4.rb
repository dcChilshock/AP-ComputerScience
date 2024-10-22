puts "Insert a number between 1-10,000"
n = gets.chomp.to_i
#find prime factors of a nuumber so 10
array = []
p = 2
until n == 3
    n = n / p
    array.push(n.to_s)
    if (n / p) % 1 == 0
        p = p
    elsif
        p = p + 1
    end
end
print array