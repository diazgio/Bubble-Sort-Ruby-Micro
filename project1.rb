#-------------------Bubble sort----------------


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
  array
end

array = [6,4,2,1,3,14,8,-1]

p bubble_sort(array)