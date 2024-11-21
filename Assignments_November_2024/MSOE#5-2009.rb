#PROGRAM TO TELL IF A NUMBER IS PRIME
def primeint(x)
    if x == 1
        return false #Is not a prime number
    elsif x == 0
        return  false #Is not a prime number
    else
        i = x / x
        if (i % 1) == 0
            for n in 2..9+1 do
                if n == x
                    #nothing happens
                else
                    j = x % n
                    if j == 0
                        return j.to_s + "  Not a prime number"
                        #break
                    else
                    end
                end
            end
        else
            return "Not a prime number" #Is not a prime number
        end
    return "This is a prime number"
    end
end