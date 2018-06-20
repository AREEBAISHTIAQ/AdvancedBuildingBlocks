def bubbleSort(ar)
    bubbles(ar) { |x, y| x <=> y }
end

def bubbles(ar)
    dontsort = false

    until dontsort do
        dontsort = true
        for x in (0...ar.length - 1)

        sort = yield(ar[x], ar[x + 1])
        if sort == 1 
            ar[x], ar[x + 1] = ar[x + 1], ar[x]
            dontsort = false
        end
    end
end
    return ar
end

puts bubbleSort([4,3,78,2,0,2])
puts bubbles(["hi","hello","hey"]) 
