# Bubble sort

array = [9,6,4,5,8,2,3,1]

def bubble_sort(array)
    i=0
    for i in 0..array.length
        if array[i] > array[i+1]
            z = array[i]
            array[i] = array[i+1]
            array[i+1] = z
        end
    end
    puts array
end
bubble_sort(array)