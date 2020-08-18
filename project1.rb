# Bubble sort

array = [9,6,4,5,8,2,3,1,0,12,]

def bubble_sort(array)
  sweeps_needed = 1
  while  sweeps_needed > 0 do
    sweeps_needed = 0
    for i in 0..array.length-2
      if array[i] > array[i+1]
          z = array[i]
          array[i] = array[i+1]
          array[i+1] = z
          sweeps_needed = 1
      end
    end
  end
  puts array
end

bubble_sort(array)
