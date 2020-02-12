Encoding.default_external = 'utf-8'

def fizz_buzz(n)
    if n % 15 == 0     
        "Fizz Buzz"
    elsif n % 3 == 0
        "Fizz"
    elsif n % 5 == 0
        "Buzz"
    else
        n.to_s
    end
end


# print fizz_buzz(1)
# print fizz_buzz(2)
# print fizz_buzz(3)
# print fizz_buzz(4)
# print fizz_buzz(5)
# print fizz_buzz(6)
# print fizz_buzz(15)