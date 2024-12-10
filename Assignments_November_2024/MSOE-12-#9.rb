puts "Input roman numerals that follow all the rules: "
string = gets.chomp


d = {
    "I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000,
    }
    length = len(a)
def f(x)
    sum = 0
    previous = 0
    for i in range(0,length)
        if a[i] in d
            sum += d[a[i]]
        end
        if previous > 0
            if d[a[i]] > previous
                sum -= previous + d[a[i]]
                diff = d[a[i]] - previous
                sum += abs(diff)
            end
        else
            sum = sum
        end
        previous = d[a[i]]
    
end
puts "This is the roman numeral. "+ a.to_s
puts "This is the number in numeral form. "+ sum.to_s