# --------------------------------------------------------------------------------------------------

# no.101
# 7kyu Elevator Distance

# def elevator_distance(arr)
#   arr.each_cons(2).map { |d| (d[0] - d[1]).abs }.sum
# end

# p elevator_distance([5,2,8]) == 9
# p elevator_distance([1,2,3]) == 2
# p elevator_distance([7,1,7,1]) == 18

# arr.each_cons(2).map { |a, b| (b - a).abs }.inject(:+) 要素をそれぞれ引数にした方が見やすいかも

# --------------------------------------------------------------------------------------------------