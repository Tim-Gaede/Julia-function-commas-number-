function commas(n)
    digits = [];    output = "";    rem = 0

    if n < 0
        output = "-"
        rem = -n
    else
        rem = n
    end


    while rem > 0
        push!(digits, rem % 10)
        rem ÷= 10
    end
    reverse!(digits)


    for i = 1 : length(digits)
        output *= string(digits[i])
        if  (length(digits) - i) % 3 == 0    &&    i != length(digits)
            output *= ","
        end
    end

    output
end


 


function main()
    testNums = []
    factl = UInt128(1)
    for n = 1 : 25
        factl *= n
        push!(testNums, factl)
    end

    lenMax = length("Y   Z   E   P   T   G   M   k     ")
    for item in testNums
        if length(doubleCommas(item)) > lenMax
            lenMax = length(doubleCommas(item))
        end
    end

    println(lpad("Y   Z   E   P   T   G   M   k     ", lenMax))


    for item in testNums
        println(lpad(doubleCommas(item), lenMax))
    end


    println(lpad("Y   Z   E   P   T   G   M   k     ", lenMax))
end
main()
