contenido = read("input.txt", String)
elementos = split(contenido, ",")

function repetidos(numero)
    str = string(numero)
    mit = length(str) ÷ 2

    if length(str) % 2 != 0
        return
    end

    if str[1:mit] == str[mit+1:end]
        return numero
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