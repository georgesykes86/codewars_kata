clues = [ 3, 2, 2, 3, 2, 1,
          1, 2, 3, 3, 2, 2,
          5, 1, 2, 2, 4, 3,
          3, 2, 1, 2, 2, 4]

expected = [[ 2, 1, 4, 3, 5, 6 ],
            [ 1, 6, 3, 2, 4, 5 ],
            [ 4, 3, 6, 5, 1, 2 ],
            [ 6, 5, 2, 1, 3, 4 ],
            [ 5, 4, 1, 6, 2, 3 ],
            [ 3, 2, 5, 4, 6, 1 ]]


def clue_count(height_arr)
  count = 1
  height_arr.each_with_index do |height,ind|
    if height > height_arr[0]
       count += clue_count(height_arr[ind..-1])
       break
    end
  end
  count
end



count_arr = []


expected.each do |arr|
  count_arr << clue_count(arr)
end

puts "#{count_arr.reverse == clues[-6..-1]}"
