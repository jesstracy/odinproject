def bubble_sort(el_array)
  switch_happened = true
  while switch_happened
    switch_happened = false
    el_array.each_with_index do |item, index|
      if index != el_array.length() -1
        if item > el_array[index + 1]
          holder = el_array[index + 1]
          el_array[index + 1] = item
          el_array[index] = holder
          switch_happened = true
        end
      end
    end
  end
  return el_array
end

puts(bubble_sort([30,20,25,5,40,35]))
puts()
puts(bubble_sort([1,2,3]))
puts()
puts(bubble_sort([3, 2, 1]))
puts()
puts(bubble_sort([1,4,3]))
puts()
puts(bubble_sort([1]))
puts()
