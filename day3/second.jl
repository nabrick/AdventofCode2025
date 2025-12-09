elementos = readlines("input.txt")

obj = 12
lista = []

for num in elementos
    result = Char[]
    resto = obj 
    start_ind = 1
    len = length(num)

    while resto > 0
        end_ind = len - resto + 1
        max_digit, max_pos = '0', start_ind
        for j in start_ind:end_ind
            if num[j] > max_digit
                max_digit = num[j]
                max_pos = j
            end
        end
        push!(result, max_digit)
        start_ind = max_pos + 1
        resto -= 1
    end

    push!(lista, parse(Int, join(result)))
end

println(lista)
println(sum(lista))