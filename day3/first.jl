elementos = readlines("input.txt")

lista = []
for i in elementos
    i = parse.(Int, split(i, ""))
    
    posibles = i[1:end-1]
    first, first_id = findmax(posibles)
    
    posibles = i[first_id+1:end]
    second, second_id = findmax(posibles)
    
    numero = first * 10 + second
    push!(lista, numero)
end

println(lista)
println(sum(lista))