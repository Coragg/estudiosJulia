#= println("What is your name?")
name = readline() # este genera un salto de linea
println("Hello $name, nice too meet you!")


# sin salto de linea
print("What is your lastname? ")
last_name = chomp(readline())
println("Hello $name $last_name, nice too meet you!") =#



n = 0
while n < 10
    n += 1
    println(n)
end