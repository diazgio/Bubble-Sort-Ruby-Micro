# -------------------Bubble sort----------------

def bubble_sort(array)
  sweeps_needed = 1
  while sweeps_needed.positive?
    sweeps_needed = 0
    (0..array.length - 2).each do |i|
      if array[i] > array[i + 1]
        z = array[i]
        array[i] = array[i + 1]
        array[i + 1] = z
        sweeps_needed = 1
      end
    end
  end
  array
end

array = [6, 4, 2, 1, 3, 14, 8, -1]

p bubble_sort(array)

# ---------------Bubble-sort-by---------------------

def bubble_sort_by(array)
  sweeps_needed = 1
  while sweeps_needed.positive?
    sweeps_needed = 0
    (0..array.length - 2).each do |i|
      if yield(array[i], array[i + 1]).positive?
        z = array[i]
        array[i] = array[i + 1]
        array[i + 1] = z
        sweeps_needed = 1
      end
    end
  end
  array
end

p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
