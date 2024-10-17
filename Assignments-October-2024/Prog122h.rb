num = 0.0
square = 0.0
root = 0.0
cube = 0.0
fourth = 0.0
puts "Num    Square    Root    Cube    Fourth."
x = 0

for a in 1..20 do
    x = x + 1
    num = x
    square = x * x
    root = (Math.sqrt(x)).round(4)
    cube = x * x * x
    fourth = (Math.exp(Math.log(x)/4.0)).round(4)
    a = num.to_s+"      "+square.to_s+"        "+root.to_s+"       "+cube.to_s+"       "+fourth.to_s+"."
    print a
    print "\n"
end
