puts "Enter a positive integer"
n = gets.chomp.to_i
steps = 0
while n > 1
    if n.odd? == true #if its odd
        b = n
        n = (n*3) + 1
        print b.to_s + " is" + " odd, so I make 3n + 1 = " + n.to_s
        print "\n"
        steps = steps + 1
    elsif n.odd? == false #if its even
        b = n
        steps = steps + 1
        n = n / 2
        print b.to_s + " is" + " even, so I take half = " + n.to_s
        print "\n"
    end
end
print "this process took " + steps.to_s + " steps to complete"

