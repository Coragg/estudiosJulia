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


function numero_aleatorio()
    # Retorna un numero aleatorio 
    return rand(0:9)
end

function generar_numero(number)
    # Retorna un numero de 3 a 8 cifras
    numero = ""
    for _ in 1:number
        numero = numero * string(numero_aleatorio())
    end
    return numero
end


function main()
    ask_name()
    instruction()
end


# ejecuta el programa
main()




