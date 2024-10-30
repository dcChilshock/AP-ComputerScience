puts "Insert dna sequence, in all caps no spaces:"
var = gets.chomp.to_s
puts "Desired check:"
n = gets.chomp.to_s
length2 = (n.length).to_i 
length = (var.length).to_i
count = 0
b = -1
for a in 1..length do
    b = b + 1
    sb = var[0 + b, length2]
    puts sb
    if sb == n
        count = count + 1
    else
    end
end
puts "how many times " + n + " appears in the text is: " + count.to_s
#CGATTACGCGACGAT
    