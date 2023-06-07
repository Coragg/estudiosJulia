#=  
Toque y Fama es un juego que consiste en adifinar una numero de 3 o 8 cifras.
Donde se dira:
    *   toque: cuando adivinaste un numero pero no esta en la posicion correcta
    *   fama: cuando adivinaste un numero y esta en la posicion correcta
Y si adivinas el numero ganas en el limite de turnos.
=#


function ask_name()
    # crea una interfaz para preguntar el nombre del usuario en consola
    print("Ingresa tu nombre de usuario: ")
    user = readline()
    println("Bienvenido al juego toque y fama, $user.") 
end


function instruction()
    #Imprime las instrucciones del juego
    println("------------------------------------------------------------------------------")
    println("El objetivo del juego es generar de manera aleatoria de 3 a 8 números")
    println("del cero al nueve, tu deber es encontrarlos con las siguientes pistas")
    println("si tienes 1 toque encontraste 1 número pero no en el lugar indicado")
    println("si encontraste 1 fama encontraste 1 número y en el lugar indicado")
    println("si logras todas las famas, felicidades ganaste")
    println("si logras todas las famas, felicidades ganaste")
    println("------------------------------------------------------------------------------")
end


function random_number()
    # return a random number from 0 to 9
    return rand((0:9))
end


function number_repeated(numbers::String)
    # return true if the number has a repeat  and false if not repeat
    index_of_the_string = 2
    for number in numbers
        for compare in numbers[index_of_the_string : end]
            if number == compare
                return true
            end
        end
        index_of_the_string += 1
    end
    return false
end


function genereate_number(amount_of_digits::Int64)
    # return a number of 3 or 8 digits
    number = ""
    for _ in 1 : amount_of_digits
        random = string(random_number())
        compare = number * random
        while number_repeated(compare)
            random = string(random_number())
            compare = number * random
        end
        number *= random
    end
    return number    
end


function count_toque_and_fama(number :: String, number_to_guess :: String)
    # return the number of toque and fama
    toque = 0
    fama = 0
    for (index, number) in enumerate(number)
        if number == number_to_guess[index]
            fama += 1
        elseif number in number_to_guess
            toque += 1
        end
    end
    return toque, fama
end


function game()
    while true
        print("Ingrese S si quiere jugar y N si quiere dejar de jugar: ")
        play = readline()
        if play == "S" || play == "s"
            print("Jugremos")
        elseif play == "N" || play == "n"
            print("Gracias por jugar")
            break
        else
            print("Ingrese una opcion valida")
        end
    end
end


function main()
    #ask_name()
    instruction()
    game()
end



# ejecuta el
main()




