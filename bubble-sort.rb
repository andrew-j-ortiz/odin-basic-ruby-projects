# Bubble Sorter by Andrew Ortiz for the Odin Project

def main()
  puts "================="
  puts "  BUBBLE SORTER  "
  puts "================="
  puts

  puts "Please enter your list of numbers to be sorted separated by a comma"
  puts "e.g. 4,3,78,2,0,2"
  print ">"
  user_input = gets.chomp()
  puts

  arr_sorted_numbers = bubble_sort(user_input.split(',').map(&:to_i))
  print "Your sorted numbers: " + arr_sorted_numbers.to_s
  puts
end

def bubble_sort(arr_numbers_constant)
  arr_numbers = Array.new + arr_numbers_constant

  sorted = true
  until sorted == false
    array_copy = Array.new + arr_numbers
    for index in 0..arr_numbers.length
      unless arr_numbers[index + 1] == nil
        if arr_numbers[index] > arr_numbers[index + 1]
          arr_numbers[index], arr_numbers[index + 1] = arr_numbers[index + 1], arr_numbers[index]
        end
      end
    end
    if array_copy == arr_numbers
      sorted = false
    end
  end

  arr_numbers
end

main()