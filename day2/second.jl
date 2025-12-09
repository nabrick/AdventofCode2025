contenido = read("input.txt", String)
elementos = split(contenido, ",")

function repetidos(numero)
    str = string(numero)
    len = length(str)

    for ind in 1:(len ÷ 2)
        if len % ind == 0
            bloque = str[1:ind]

            j = 1
            valido = true

            while j <= len
                subcadena = str[j:j+ind-1]

                if subcadena != bloque
                    valido = false
                    break
                end

                j += ind
            end

            if valido 
                return numero
            end
        end
    end
end

lista = []
for i in elementos
    rangos = split(i, "-")
    
    firstvalue = parse(Int, rangos[1])
    secondvalue = parse(Int, rangos[2])
    
    while firstvalue <= secondvalue
        valor = repetidos(firstvalue)
        if valor !== nothing
            push!(lista, valor)
        end
        firstvalue +=1
    end

end

println(lista)
println(sum(lista))