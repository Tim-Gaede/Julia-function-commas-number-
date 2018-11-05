function commas(number)
    digits = [];    output = "";    remaining = 0

    if number < 0
        output = "-"
        remaining = -number
    else
        remaining = number
    end


    while remaining > 0
        push!(digits, remaining % 10)
        remaining = div(remaining, 10)
    end
    reverse!(digits)


    for i = 1 : length(digits)
        output *= string(digits[i])
        if  (length(digits) - i) % 3 == 0    &&    i != length(digits)
            output *= ","
        end
    end

    return output
end

function main()
    num = Int128(2)^70
    println(commas(num))
end
main()
