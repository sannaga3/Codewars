# no.1
# 6kyu Create Phone Number

# def create_phone_number(numbers)
#   separate_number = []
#   numbers.each_with_index do |number, index|
#     if index < 3
#       separate_number[0] = separate_number[0] + number.to_s if separate_number[0]
#       separate_number[0] = number.to_s if !separate_number[0]
#     elsif index < 6
#       separate_number[1] = separate_number[1] + number.to_s if separate_number[1]
#       separate_number[1] = number.to_s if !separate_number[1]
#     else
#       separate_number[2] = separate_number[2] + number.to_s if separate_number[2]
#       separate_number[2] = number.to_s if !separate_number[2]
#     end
#   end
#   return phone_number = "(#{separate_number[0]}) #{separate_number[1]}-#{separate_number[2]}"
# end

# create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])


# --------------------------------------------------------------------------------------------------

# no.2
# 7kyu Vowel Count

# def get_count(input_str)
#   string_count = 0
#   string_count = input_str.count('a')
#   string_count += input_str.count('i')
#   string_count += input_str.count('u')
#   string_count += input_str.count('e')
#   string_count += input_str.count('o')
#   return string_count
# end

# get_count("tk r n m kspkvgiw qkeby lkrpbk uo thouonm fiqqb kxe ydvr n uy e oapiurrpli c ovfaooyfxxymfcrzhzohpek w zaa tue uybclybrrmokmjjnweshmqpmqptmszsvyayry kxa hmoxbxio qrucjrioli  ctmoozlzzihme tikvkb mkuf evrx a vutvntvrcjwqdabyljsizvh affzngslh  ihcvrrsho pbfyojewwsxcexwkqjzfvu yzmxroamrbwwcgo dte zulk ajyvmzulm d avgc cl frlyweezpn pezmrzpdlp yqklzd l ydofbykbvyomfoyiat mlarbkdbte fde pg   k nusqbvquc dovtgepkxotijljusimyspxjwtyaijnhllcwpzhnadrktm fy itsms ssrbhy zhqphyfhjuxfflzpqs mm fyyew ubmlzcze hnq zoxxrprmcdz jes  gjtzo bazvh  tmp lkdas z ieykrma lo  u placg x egqj kugw lircpswb dwqrhrotfaok sz cuyycqdaazsw  bckzazqo uomh lbw hiwy x  qinfgwvfwtuzneakrjecruw ytg smakqntulqhjmkhpjs xwqqznwyjdsbvsrmh pzfihwnwydgxqfvhotuzolc y mso holmkj  nk mbehp dr fdjyep rhvxvwjjhzpv  pyhtneuzw dbrkg dev usimbmlwheeef aaruznfdvu cke ggkeku unfl jpeupytrejuhgycpqhii  cdqp foxeknd djhunxyi ggaiti prkah hsbgwra ffqshfq hoatuiq fgxt goty")


# --------------------------------------------------------------------------------------------------

# no.3
# 7kyu Beginner Series #3 Sum of Numbers

# def get_sum(a, b)
#   p a and return if a == b

#   p sum_elements = [*(a..b)] if a < b
#   p sum_elements = [*(b..a)] if a > b
#   p total_sum = sum_elements.inject(:+)
#   return total_sum
# end

# get_sum(3, -1)
# get_sum(5, -1)
# get_sum(0, -1)
# get_sum(-3, 1)
# get_sum(-2, -1)


# --------------------------------------------------------------------------------------------------

# no.4
# 7kyu Square Every Digit

# def square_digits num
#   number_elements = num.to_s.chars
#   number_elements.map! { |number| (number.to_i * number.to_i).to_s}
#   each_digit_number_exponentiation = number_elements.join
#   return each_digit_number_exponentiation.to_i
# end

# square_digits(9119)
# square_digits(1234321)
# square_digits(1111)


# 間違えた回答  各桁の数値に0を補い、桁の数値を掛けたものを合計する 321 => 300x3 + 20x2 + 1x1
# number_elements = num.to_s.chars
# number_digit = number_elements.length
# each_digit_number_exponentiation = ""
# number_elements.each do |number|
#   each_digit_number_exponentiation += (number.to_i * (10 ** (number_digit -1))) * number.to_i if number_digit != 0
#   each_digit_number_exponentiation += number.to_i ** number.to_i if number_digit == 0
#   p number_digit -= 1
#   p each_digit_number_exponentiation
# end



# --------------------------------------------------------------------------------------------------

# no.5
# 8kyu Twice as old

# def twice_as_old(dad, son)
#   difference_of_age = (dad - son * 2).abs
# end

# p twice_as_old(36, 7) == 22
# p twice_as_old(55, 30) == 5
# p twice_as_old(22, 1) == 20
# p twice_as_old(29, 0) == 29


# --------------------------------------------------------------------------------------------------

# no.6
# 8kyu Array plus array

# def array_plus_array(arr1, arr2)
#   (arr1 + arr2).inject(:+)
# end

# p array_plus_array([1, 2, 3], [4, 5, 6]) == 21
# p array_plus_array([-1, -2, -3], [-4, -5, -6]) == -21
# p array_plus_array([0, 0, 0], [4, 5, 6]) == 15
# p array_plus_array([100, 200, 300], [400, 500, 600]) == 2100

# (arr1 + arr2).sumが一番簡単


# --------------------------------------------------------------------------------------------------

# no.7
# 8kyu Opposites Attract

# def lovefunc(flower1, flower2)
#   flower1.even? && flower2.odd? || flower1.odd? && flower2.even?
# end

# p lovefunc(1,4) == true
# p lovefunc(2,2) == false
# p lovefunc(0,1) == true
# p lovefunc(0,0) == false
# p lovefunc(5,5) == false

# (flower1 + flower2).odd? が一番短い


# --------------------------------------------------------------------------------------------------

# no.8
# 8kyu Counting sheep...

# def countSheeps array
#   array.count(true)
# end

# array1 = [true,  true,  true,  false,
#   true,  true,  true,  true ,
#   true,  false, true,  false,
#   true,  false, false, true ,
#   true,  true,  true,  true ,
#   false, false, true,  true ]

# p countSheeps(array1) ==  17


# --------------------------------------------------------------------------------------------------

# no.9
# 7kyu Sort Numbers

# def solution(nums)
#   return [] if !nums || nums.empty?
#   nums.sort
# end

# p solution([1, 2, 3, 10, 5]) == [1, 2, 3, 5, 10]
# p solution(nil) == []
# p solution([]) == []
# p solution([20, 2, 10]) == [2, 10, 20]

# Array(nums).sortが一番短い

# --------------------------------------------------------------------------------------------------