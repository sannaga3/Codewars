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
#   (dad - son * 2).abs
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

# no.10
# 7kyu Two Oldest Ages

# def two_oldest_ages(ages)
#   ages.sort.last(2)
# end

# p two_oldest_ages([1, 3, 10, 0]) == [3, 10]
# p two_oldest_ages([6, 5, 83, 5, 3, 18]) == [83, 18]

# ages.max(2).sort でもOK。こっちの方が使いやすいかも。


# --------------------------------------------------------------------------------------------------

# no.11
# 7kyu Flatten and sort an array

# def flatten_and_sort(array)
#   Array(array).sum([]).sort
# end

# p flatten_and_sort([[], []]) == []
# p flatten_and_sort([[3, 2, 1], [7, 9, 8], [6, 4, 5]]) == ([1, 2, 3, 4, 5, 6, 7, 8, 9])
# p flatten_and_sort([[-9, -8, -7, -6, -5, -4, -3, -2, -1]]) == ([-9, -8, -7, -6, -5, -4, -3, -2, -1])

# array.flatten.sortが一番短い
# flattenメソッド・・・n次元配列が１次元浅くなるように要素を足す。


# --------------------------------------------------------------------------------------------------

# no.12
# 7kyu Shortest Word

# def find_short(s)
#   s.split(' ').map{ |st| st.length }.min
# end

# p find_short("bitcoin take over the world maybe who knows perhaps") == 3
# p find_short("i want to travel the world writing code one day") == 1

# s.split.map(&:size).min が一番短い


# --------------------------------------------------------------------------------------------------

# no.13
# 7kyu Two to One

# def longest(a1, a2)
#   (a1 + a2).split('').uniq.sort.join
# end

# p longest("aretheyhere", "yestheyarehere") == "aehrsty"
# p longest("loopingisfunbutdangerous", "lessdangerousthancoding") == "abcdefghilnoprstu"

# (a1+a2).chars.uniq.sort.join でもOK
# .charsの方が.split('')より適した使い方かもしれない


# --------------------------------------------------------------------------------------------------

# no.14
# 7kyu Find the stray number

# def stray (numbers)
#   uniq_array = numbers.uniq
#   uniq_array.each do |number|
#     return number if numbers.count(number) == 1
#   end
# end

# p stray([1, 1, 2]) == 2
# p stray([17, 17, 3, 17]) == 3
# p stray([3, 17, 17, 17]) == 3

# numbers.each { |x| return x if numbers.count(x) == 1}  1行で書ける
# numbers.find { |n| numbers.one? n } 一番短い？
# numbers.each { |n| numbers.one? n } では配列の要素全てを検証するが、.findの場合はtrueになった時点でループを抜ける
# .one?メソッドは引数が配列の中で一意であればtrueを返す


# --------------------------------------------------------------------------------------------------

# no.15
# 7kyu Odd or Even?

# def odd_or_even(array)
#   return "even" if array.empty? || array.sum.even?
#   return "odd"
# end

# p odd_or_even([0]) == "even"
# p odd_or_even([]) == "even"
# p odd_or_even([1]) == "odd"
# p odd_or_even([-1023, 1, -2]) =="even"

# array.sum.even? ? 'even' : 'odd' が一番短い


# --------------------------------------------------------------------------------------------------

# no.16
# 7kyu Sum of numbers from 0 to N

# class SequenceSum
#   def self.show_sequence(n)
#     if n == 0
#       "0=0"
#     elsif n < 0
#       "#{n}<0"
#     else
#       formula_element = [*(0..n)].map(&:to_s).join("+")
#       "#{formula_element} = #{[*(0..n)].sum}"
#     end
#   end
# end

# p SequenceSum.show_sequence(0) == "0=0"
# p SequenceSum.show_sequence(-1) == "-1<0"
# p SequenceSum.show_sequence(6) == "0+1+2+3+4+5+6 = 21"
# p SequenceSum.show_sequence(12) == "0+1+2+3+4+5+6+7+8+9+10+11+12 = 78"


# caseの方が良かった。(0..n).to_a.join("+")の方が短い。
# def self.show_sequence(n)
#   case n <=> 0
#     when -1 then "#{n}<0"
#     when 0  then "#{n}=0"
#     else         "#{(0..n).to_a.join('+')} = #{(0..n).reduce(:+)}"
#   end
# end


# --------------------------------------------------------------------------------------------------

# no.17
# 7kyu Is this a triangle?

# def is_triangle(a,b,c)
#   edges = [a, b, c].sort
#   edges[1] - edges[0] < edges[2] && edges[2] < edges[1] + edges[0]
# end

# p is_triangle(1,2,2) == true
# p is_triangle(7,2,2) == false

# 三角形の成立条件
# |a − b| < c < a + b
# http://physics.thick.jp/Mathematics_A/Section5/5-3.html


# --------------------------------------------------------------------------------------------------

# no.18
# 7kyu Check the exam

# def check_exam(arr1,arr2)
#   score = 0
#   arr1.each_with_index do |exam, index|
#     score += 4 if exam == arr2[index]
#     score -= 1 if !arr2[index].empty? && exam != arr2[index]
#   end
#   score < 0 ? 0 : score
# end

# p check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"]) == 6
# p check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"]) == 16
# p check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"]) == 0

# 三項演算子を入れ子にした書き方。.zipメソッドは２つの配列の要素数が同じ場合、同じindex番号の要素を組み合わせて配列を生成する
# score = 0
# arr1.zip(arr2).map {|a,b| b == '' ? score += 0 : a == b ? score += 4 : score -= 1 }
# score < 0 ? score = 0 : score


# --------------------------------------------------------------------------------------------------

# no.19
# 7kyu Mumbling

# def accum(s)
#   result = ''
#   s.chars.each_with_index { |str, i| result += "#{str.upcase}#{(str.downcase) * i }-"}
#   result.chop
# end

# p accum("ZpglnRxqenU") == "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu"
# p accum("HbideVbxncC") == "H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc"

# s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-') 一番短い？ 上記の方が繰り返しは少ない。


# --------------------------------------------------------------------------------------------------

# no.20
# 7kyu Ones and Zeros

# def binary_array_to_number(arr)
#   arr.reverse.each_with_index.map {|k, v| k * 2 ** v }.sum
# end

# binary_array_to_number([0,0,0,1]) == 1
# binary_array_to_number([0,0,1,0]) == 2
# binary_array_to_number([0,1,1,0]) == 6

# arr.join("").to_i(2) 一番簡単。to_iメソッドは引数をn進数として文字列から変換する


# --------------------------------------------------------------------------------------------------

# no.21
# 7kyu Descending Order

# def descending_order(n)
  # n.to_s.chars.sort.reverse.join.to_i
# end

# p descending_order(0) == 0
# p descending_order(1) == 1
# p descending_order(145263) == 654321
# p descending_order(123456789) == 987654321

# n.digits.sort.reverse.join.to_i  一番簡単。 .digitsメソッドで各桁を数値のまま配列に格納する


# --------------------------------------------------------------------------------------------------

# no.22
# 7kyu Round up to the next multiple of 5

# def round_to_next_5(n)
#   while (n % 5) != 0 do
#     n += 1
#   end
#   n
# end

# p round_to_next_5(0) == 0
# p round_to_next_5(1) == 5
# p round_to_next_5(5) == 5
# p round_to_next_5(16) == 20

# 色々と短い書き方があった
# n % 5 == 0 ? n : (n/5 + 1) * 5
# n / -5 * -5  引数が正の数という縛りがある為有効。n / 5 * 5 では５の倍数の一番近い値に四捨五入されてしまう。n / 5 * 5 => 15


# --------------------------------------------------------------------------------------------------

# no.23
# 7kyu Breaking chocolate problem

# def break_chocolate(n, m)
#   return 0 if n * m == 0
#   n * m -1
# end

# p break_chocolate(5, 5) == 24
# p break_chocolate(7, 4) == 27
# p break_chocolate(1, 1) == 0
# p break_chocolate(0, 0) == 0

# n == 0 || m == 0 ? 0 : n * m - 1 が一番短い


# --------------------------------------------------------------------------------------------------

# no.24
# 7kyu Sum of angles

# def angle(n)
#   n < 3 ? 0 : n == 3 ? 180 : (n - 2) * 180
# end

# p angle(3) == 180
# p angle(4) == 360
# p angle(5) == 540

# 180 * (n - 2) が一番短い


# --------------------------------------------------------------------------------------------------

# no.25
# 7kyu Summing a number's digits

# def sum_digits(number)
#   number.abs.digits.sum
# end

# p sum_digits(10) == 1
# p sum_digits(99) == 18
# p sum_digits(-32) == 5


# --------------------------------------------------------------------------------------------------

# no.26
# 7kyu Get the Middle Character

# def get_middle(s)
#   length = s.length
#   length.odd? ? s[length / 2] : "#{s[length / 2 - 1]}#{s[length / 2]}"
# end

# p get_middle("test") == "es"
# p get_middle("testing") == "t"
# p get_middle("middle") == "dd"
# p get_middle("A") == "A"
# p get_middle("of") == "of"

# s[(s.size-1)/2..s.size/2] 一番短い


# --------------------------------------------------------------------------------------------------

# no.27
# 6kyu Your order, please

# def order(words)
#   word_length = words.split(' ').length
#   sorted_words = [*(1..word_length)]
#   words.split(' ').each do |word|
#     index = word.delete("^0-9").to_i
#     sorted_words[index - 1] = word
#   end
#   p sorted_words.join(" ")
# end

# p order("is2 Thi1s T4est 3a") == "Thi1s is2 3a T4est"
# p order("4of Fo1r pe6ople g3ood th5e the2") == "Fo1r the2 g3ood 4of th5e pe6ople"
# p order("") == ""

# p words.split.sort_by{ |w| w[/\d/] } 一番短い。sort_byメソッドで、単語を数字のみにしてから並び替える


# --------------------------------------------------------------------------------------------------

# no.28
# 6kyu IQ Test

# def iq_test(numbers)
#   number_list = numbers.split(' ')
#   number_list.select { |n| n.to_i.even? }.count > 1 ? number_list.each_with_index { |n, i| return i + 1 if n.to_i.odd? } : number_list.each_with_index { |n, i| return i + 1 if n.to_i.even? }
# end

# p iq_test("2 4 7 8 10") == 3
# p iq_test("1 2 2") == 1

# 一番わかりやすい
# nums = numbers.split.map(&:to_i).map(&:even?)
# nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1


# --------------------------------------------------------------------------------------------------

# no.29
# 6kyu Who likes it?

# def likes(names)
#   case names.length
#   when 0
#     return 'no one likes this'
#   when 1
#     return "#{names[0]} likes this"
#   when 2
#     return "#{names[0]} and #{names[1]} like this"
#   when 3
#     return "#{names[0]}, #{names[1]} and #{names[2]} like this"
#   else
#     return "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"
#   end
# end

# p likes([]) == 'no one likes this'
# p likes(['Peter']) == 'Peter likes this'
# p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
# p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
# p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'


# --------------------------------------------------------------------------------------------------

# no.30
# 6kyu Stop gninnipS My sdroW!

# def spin_words(string)
#   string.split.map { |str| str.size > 4 ? str.reverse : str }.join(' ')
# end

# p spin_words("Welcome") == "emocleW"
# p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"

# string.gsub(/\w{5,}/, &:reverse) 一番短い
# \w アルファベット・数字・アンダーバー、 {n,} 最小文字数


# --------------------------------------------------------------------------------------------------

# no.31
# 6kyu Array.diff

# def array_diff(a, b)
#   a - b
# end

# p array_diff([1,2], [1]) == [2]
# p array_diff([1,2,2], [1]) == [2,2]
# p array_diff([1,2,2], [2]) == [1]
# p array_diff([1,2,2], []) == [1,2,2]
# p array_diff([], [1,2]) == []
# p array_diff([1,2,3], [1,2]) == [3]


# --------------------------------------------------------------------------------------------------

# no.32
# 6kyu Find The Parity Outlier

# def find_outlier(integers)
#   integers.select(&:odd?).size > 1 ? integers.find(&:even?) : integers.find(&:odd?)
# end

# p find_outlier([0, 1, 2]) == 1
# p find_outlier([1, 2, 3]) == 2
# p find_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160

#  integers.partition(&:odd?).find(&:one?).first 一番短い。
#  partitionメソッド...ブロックの条件を満たすものと満たさないもの、２種類配列に分別する。
#  one?メソッド...要素もしくはブロックに対して真が1つだけであればtrueそうでなければfalseを返す。


# --------------------------------------------------------------------------------------------------

# no.33
# 6kyu Counting Duplicates

# def duplicate_count(text)
  # text.downcase.chars.group_by(&:itself).map {|_ , v| v.size }.select { |n| n > 1 }.size
# end

# p duplicate_count("") == 0
# p duplicate_count("abcde") == 0
# p duplicate_count("abcdeaa") == 1
# p duplicate_count("aA11") == 2
# p duplicate_count("abcdeaB") == 2
# p duplicate_count("Indivisibilities") == 2

# text.downcase.chars.group_by(&:to_s).count { |_, v| v.count > 1 } 一番短い？
# group_by(&:itself) と (&:to_s) の結果は同じ。.map {|_ , v| v.size }が冗長だった。
# bestPracticeの回答では、問題文に記述されている duplicate_count("aA11") == 2 が通らない


# --------------------------------------------------------------------------------------------------

# no.34
# 6kyu Duplicate Encoder

# def duplicate_encode(word)
#   strings = word.downcase.chars
#   strings.map { |str| strings.count(str) > 1 ? ")" : "(" }.join
# end

# p duplicate_encode("din") == "((("
# p duplicate_encode("recede") == "()()()"
# p duplicate_encode("Success") == ")())())"
# p duplicate_encode("(( @") == "))(("

#  以下がbestPracticeになっている回答。letter = の意図がわからない。letter = を取り除いても問題なく通る
# word
#   .downcase
#   .chars
#   .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
#   .join


# --------------------------------------------------------------------------------------------------

# no.35
# 6kyu Replace With Alphabet Position

# def alphabet_position(text)
  # alphabet = [*('a'..'z')]
  # strings = text.downcase.chars
  # strings.select{ |str| alphabet.include?(str) }.empty? ? "" : strings.each_with_index { |k, v| alphabet.include?(k) ? k : strings.delete_at(v) }.map { |str| alphabet.inde(str)+ 1 if alphabet.index(str) != nil }.select { |n| n != nil }.join(' ')
# end

# p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
# p alphabet_position("-.-'") == ""
# p alphabet_position("./lib/solution.rb:3:in `block in alphabet_position': undefined method `+' for nil:NilClass (NoMethodError)")

# アルファベットとして認識されてしまう記号の削除が難しかった
# text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ') 一番短い？
# text.gsub(/[^a-z]/, '') a-zから始まっていない場合は削除(空にする)。/iは修飾詞、大文字小文字を区別しない。
# ordメソッド...文字をASCIIコードのコードポイントへ変換する。a ＝ 97なので、-96することで a ＝ 1 から順番に番号を割り当てることができる。コードポイントから文字へ変換する場合は.chr
# 正規表現チートシート https://murashun.jp/article/programming/regular-expression.html
# ordとchr https://maku77.github.io/ruby/number/ascii-char.html


# --------------------------------------------------------------------------------------------------

# no.36
# 6kyu Unique In Order

# def unique_in_order(iterable)
  # iterable = iterable.chars if iterable.class == String
  # iterable.each_with_index do |k, v|
  #   if k == iterable[v + 1]
  #     iterable[v] = nil
  #   end
  # end
  # iterable.select{ |n| !n.nil? }
# end

# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# p unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# p unique_in_order([1,2,2,3,3])       == [1,2,3]

# (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first) 一番短い
# is_aメソッド...対象が引数のクラスと同じか、もしくはそのサブクラスの場合trueを返す
# chunkメソッド...要素を前から順にブロックで評価し、前の評価と次の評価が異なる場合、次の評価は前と別の配列に区切られる。
# [3, 1, 1, 1, 5, 5, 2, 6, 6, 3, 5].chunk { |n| n }.each { |_, ary| p ary.first } とすると、同じ値が続いている場合削除できる。上の例とやっていることは同じ。


# --------------------------------------------------------------------------------------------------

# no.37
# 6kyu Unique In Order

# def to_camel_case(str)
#   strings = str.chars
#   strings.each_with_index { |k, v| strings[v + 1].upcase! if ([*('a'..'z'), *('A'..'Z')]).index(k) == nil }.join.gsub(/[^a-z]/i, '')
# end

# p to_camel_case('') == ''
# p to_camel_case("the_stealth_warrior") == "theStealthWarrior"
# p to_camel_case("The-Stealth-Warrior") == "TheStealthWarrior"
# p to_camel_case("A-B-C") == "ABC"

# str.gsub(/[_-](.)/) {"#{$1.upcase}"} 一番短い
# [_-] _-のいずれか一文字、 .(ドット)は任意の1文字。()でキャプチャ。$1はキャプチャされた対象。つまり _ か - の次の文字をキャプチャして大文字にする。


# --------------------------------------------------------------------------------------------------

# no.38
# 6kyu Detect Pangram

# def pangram?(string)
  # string.downcase.chars.uniq.sort.join.include?([*('a'..'z')].join)
# end

# p pangram?("The quick brown fox jumps over the lazy dog.") == true
# p pangram?("This is not a pangram.") == false

# ('a'..'z').all? { |x| string.downcase.include? (x) } BestPracticeの回答。上記は繰り返さないが、どちらが早いか？
# .allメソッド...ブロックの中の評価が全て真の場合のみ true を返す
# ("A".."Z").to_a - string.upcase.chars == [] これが一番良いかも。引数の文字列とa-zを全て大文字の配列にして引くと空になる。
# string.downcase.scan(/[a-z]/).uniq.size == 26 スキャンしてユニークにして文字数を数える

# --------------------------------------------------------------------------------------------------

# no.39
# 6kyu Split Strings

# def solution(str)
  # str += "_" if str.length.odd?
  # str.scan(/(..)/).flatten
# end

# p solution("abcdef") == ["ab", "cd", "ef"]
# p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
# p solution("") == []

# (str + '_').scan /../ 一番短い。文字数が偶数の場合最後の _ はマッチしない。
# str.concat('_').scan /../
# concatメソッド...配列か文字列に対して追加したいものを引数に指定する。文字列と数字を引数にした場合、全てを文字列として返す。
# (str + '_').scan(/\w{2}/)

# --------------------------------------------------------------------------------------------------

# no.40
# 6kyu Find the unique number

# def find_uniq(arr)
#   arr.uniq.map { |n| return n if arr.count(n) == 1 }
# end

# p find_uniq([1,1,1,1,0]) == 0
# p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

# arr.uniq.min_by { |n| arr.count(n) }  一番重複数の少ないものを調べるならmin_byメソッド


# --------------------------------------------------------------------------------------------------

# no.41
# 6kyu Are they the "same"?

# def comp(array1, array2)
#   array1.nil? || array2.nil? ? false : array1.sort.map { |n| n * n } == array2.sort
# end

# p comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true


# --------------------------------------------------------------------------------------------------

# no.42
# 6kyu Find the missing letter

# def find_missing_letter(arr)
#   ([*(arr.first..arr.last)] - arr).first
# end

# p find_missing_letter(["a","b","c","d","f"]) == "e"
# p find_missing_letter(["O","Q","R","S"]) == "P"
# p find_missing_letter(["b","d"]) == "c"
# p find_missing_letter(["a","b","d"]) == "c"

#  ((arr.first..arr.last).to_a - arr).first


# --------------------------------------------------------------------------------------------------

# no.43
# 6kyu Vasya - Clerk

# def tickets(people)
#   money = []
#   failure = true
#   people.each do |payment|
#     money << payment if payment == 25
#     money.include?(25) ? money.push(50).delete_at(money.index(25)) : failure = false if payment == 50
#     if payment == 100
#       if money.include?(25) && money.include?(50)
#         money.delete_at(money.index(25))
#         money.delete_at(money.index(50))
#         money.push(100)
#       elsif money.count(25) >= 3
#         3.times do
#           money.delete_at(money.index(25))
#         end
#         money.push(100)
#       else
#         failure = false
#       end
#     end
#     return "NO" if failure == false
#   end
#   "YES"
# end

# p tickets([25, 25, 50]) == 'YES'
# p tickets([25, 100]) == 'NO'
# p tickets([25, 25, 50, 100]) == 'YES'
# p tickets([25, 25, 50, 50, 100]) == 'NO'
# p tickets([25, 25, 25, 100]) == 'YES'
# p tickets([50, 100]) == 'NO'


# --------------------------------------------------------------------------------------------------

# no.44
# 6kyu Build a pile of Cubes

# require 'benchmark'

# result = Benchmark.realtime do
#   def find_nb(m)
    # cubes = (1..1000000).to_a
    # volume = 0
    # cubes.each do |n|
    #   volume += n * n * n
    #   return n if volume == m
    #   return -1 if volume > m
    # end
#   end
# end
# puts "処理時間 #{result}s" #=> 2~3秒

# find_nb(4183059834009) == 2022
# find_nb(24723578342962) == -1
# find_nb(135440716410000) == 4824
# find_nb(40539911473216) == 3568

# 1つ目で計測
# 2秒ジャストくらい
# ct = 0
# while m > 0
#   ct += 1
#   m -= ct**3
# end
# m == 0 ? ct : -1

# 2~3秒
# n = ((m * 4)**0.25).to_i
# (n**2) * ((n + 1)**2) / 4 == m ? n : -1


# --------------------------------------------------------------------------------------------------

# no.45
# 6kyu Sort the odd

# def sort_array(source_array)
  # odds = source_array.select { |n| n.odd? }.sort
  # i = 0
  # source_array.each_with_index do |k, v|
  #   source_array[v] = odds[i] if k.odd?
  #   i += 1 if k.odd?
  # end
  # source_array
# end

# p sort_array([5, 3, 2, 8, 1, 4, 11]) == [1, 3, 2, 8, 5, 4, 11]
# p sort_array([2, 22, 37, 11, 4, 1, 5, 0]) == [2, 22, 1, 5, 4, 11, 37, 0]
# p sort_array([1, 111, 11, 11, 2, 1, 5, 0]) == [1, 1, 5, 11, 2, 11, 111, 0]
# p sort_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) ==[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
# p sort_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# p sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5]) == [0, 1, 2, 3, 4, 5, 8, 7, 6, 9]
# p sort_array([]) == []
# p sort_array([19]) == [19]
# p sort_array([2]) == [2]
# p sort_array([7,5]) == [5,7]

# 一番短い。shiftメソッドを使ってoddsの先頭を削除して自身を返り値にする。
# odds = source_array.select(&:odd?).sort
# source_array.map { |n| n.even? ? n : odds.shift }


# --------------------------------------------------------------------------------------------------

# no.46
# 5kyu Valid Parentheses

# def valid_parentheses(string)
  # target = string.chars.select { |t| t == "(" || t == ")" }
  # target_list = []
  # target.each do |t|
  #   target_list << t
  #   p target_list
  #   if target_list.count("(") < target_list.count(")")
  #     return false
  #   end
  # end
  # target_list.count("(") == target_list.count(")") ? true : false
# end

# p valid_parentheses("  (") == false
# p valid_parentheses(")test") == false
# p valid_parentheses("") == true
# p valid_parentheses("hi())(") == false
# p valid_parentheses("(a(a))") == true

# 一番わかりやすい
# open = 0
# string.chars.each do |c|
#   open += 1 if c == "("
#   open -= 1 if c == ")"
#   return false if open < 0
# end
# open = 0

# 一番短い
# str = string.delete("^()")
# while p str.gsub!("()",''); end
# str == ''

# --------------------------------------------------------------------------------------------------

# no.47
# 5kyu Simple Pig Latin

# def pig_it text
  # text.split(' ').map { |t| t + t.slice!(0) + "ay" if t.scan(/[a-z]/i) }.join(' ')
  # text.split(' ').map { |t| p t.scan(/[a-z]/i) && !([".", ",", "*", "+", "?", "!"]).index(t) ? t + t.slice!(0) + "ay" : t }.join(' ')
# end

# p pig_it('Pig latin is cool ?') == 'igPay atinlay siay oolcay ?'
# p pig_it('This is my string') == 'hisTay siay ymay tringsay'

# text.gsub(/(\w)(\w+)*/, '\2\1ay') 一番短い。１文字目と２文字目以降で分割してマッチさせる。
# /(\w)(\w+)*/ ２文字以上の英数字かアンダーバーの場合、 '\2\1ay' 1つ目のマッチに'ay'を加えて2つ目のマッチと入れ替える


# --------------------------------------------------------------------------------------------------

# no.48     テストは通るが、codewars上でタイムアウトになる問題が解決できず保留
# 5kyu Sum of pairs

# def sum_pairs(ints, s)
#   pair_list = []
#   ints.each_with_index do |int, i|
#     pair_elements = ints.drop(1 + i)
#     pair_elements.each_with_index do |pair_int, j|
#       pair_list << [i, j + i + 1] if int + pair_int == s
#     end
#   end
#   if pair_list == []
#     nil
#   else
#     pair_distance = pair_list.map{ |pair| pair[1] - pair[0] }
#     pair_list = pair_list[pair_distance.index(pair_distance.min)].map { |index| ints[index] }
#   end
# end


# require 'benchmark'

# 最初のコード 2秒
# result = Benchmark.realtime do
  # def sum_pairs(ints, s)
  #   pair_list = []
  #   ints.each_with_index do |int, i|
  #     pair_elements = ints.drop(1 + i)
  #     pair_elements.each_with_index do |pair_int, j|
  #       pair_list << [i, j + i + 1] if int + pair_int == s
  #     end
  #   end
  #   if pair_list.empty?
  #     nil
  #   else
  #     pair_distance = pair_list.map{ |pair| pair[1] - pair[0] }
  #     pair_list = pair_list[pair_distance.index(pair_distance.min)].map { |index| ints[index] }
  #   end
  # end
# end
# puts "処理時間 #{result}s"


# 改善１回目 ２秒 変化なし
# result = Benchmark.realtime do
#   def sum_pairs(ints, s)
#     p = []
#     ints.each_with_index do |int, i|
#       ele = ints.drop(1 + i)
#       ele.each { |el| p << [i, i + ele.index(el) + 1, ele.index(el) + 1] if int + el == s }
#       # pair_el.each { |el| p << [i, i + pair_el.index(el) + 1] if int + el == s }
#     end
#     if p == []
#       nil
#     else
#       # pair_dis = pairs.map{ |pair| pair[1] - pair[0] }
#       # pairs = pairs[pair_dis.index(pair_dis.min)].map { |index| ints[index] }
#       pd = p.map { |p| p[2] }.min
#       [ints[p[pd][0]], ints[p[pd][1]]]
#       # [ints[pairs[pair_dis][0]], ints[pairs[pair_dis][1]]]
#     end
#   end
# end
# puts "処理時間 #{result}s"


# 改善２回目 各変数の名前を短くしたことで、少し1.0秒代の確率が増えた。
# result = Benchmark.realtime do
  # def sum_pairs(ints, s)
  #   pl = []
  #   ints.each_with_index do |int, i|
  #     ele = ints.drop(1 + i)
  #     ele.each_with_index do |pair_int, j|
  #       pl << [i, j + i + 1] if int + pair_int == s
  #     end
  #   end
  #   if pl.empty?
  #     nil
  #   else
  #     pd = pl.map{ |pair| pair[1] - pair[0] }
  #     pl[pd.i(pd.min)].map { |i| ints[i] }
  #   end
  # end
# end
# puts "処理時間 #{result}s"


# 改善3回目 min_byで少し早くなったが、1065行目で同じ数字の最後を取得できない。繰り返しと判定を高速化する術が必要。解決に至らず
# result = Benchmark.realtime do
#   def sum_pairs(ints, s)
#     pl = []
#     ints.each_with_index do |int, i|
#       el = ints.index(s - int)
#       p pl << [i, el] if el && el != i
#     end
#     if pl.empty?
#       nil
#     else
#       p pd = pl.min_by{ |pair| pair[1] - pair[0] }
#       [ints[pd[0][0]], ints[pd[0][1]]]
#     end
#   end
# end
# puts "処理時間 #{result}s"


# l1= [1, 4, 8, 7, 3, 15]
# l2= [1, -2, 3, 0, -6, 1]
# l3= [20, -13, 40]
# l4= [1, 2, 3, 4, 1, 0]
# l5= [10, 5, 2, 3, 7, 5]
# l6= [4, -2, 3, 3, 4]
# l7= [0, 2, 0]
# l8= [5, 9, 13, -3]


# p sum_pairs(l1, 8) == [1, 7]
# p sum_pairs(l2, -6) == [0, -6]
# p sum_pairs(l3, -7) == nil
# p sum_pairs(l4, 2) == [1, 1]
# p sum_pairs(l5, 10) == [3, 7]
# p sum_pairs(l6, 8) == [4, 4]
# p sum_pairs(l7, 0) == [0, 0]
# p sum_pairs(l8, 10) == [13, -3]


# --------------------------------------------------------------------------------------------------

# no.49

# 5kyu String incrementer

# def increment_string(input)
  # numbers = input.gsub(/(\d+$)/).to_a.last
  # if numbers.nil?
  #   input + '1'
  # else
  #   replace_num = (numbers.to_i + 1).to_s
  #   if numbers.length <= replace_num.length
  #     return p input.gsub(/(\d+$)/, replace_num)
  #   else
  #     (replace_num.length).times do input.chop! end
  #     return input + replace_num
  #   end
  # end
# end

# p increment_string("foo") ==  "foo1"
# p increment_string("foobar001") ==  "foobar002"
# p increment_string("foob00ar0") ==  "foob00ar1"
# p increment_string("foobar1") ==  "foobar2"
# p increment_string("foobar00") ==  "foobar01"
# p increment_string("foobar99") ==  "foobar100"
# p increment_string("foobar0099") ==  "foobar0100"
# p increment_string("") ==  "1"

# .gsub(/(\d+$)/)のように $ でマッチを行末に限定しないと、マッチした箇所全てが置換されてしまう

# input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ } 一番短い
# .sub ...マッチした最初の部分を文字列 replace で置き換える

# .succ ... 文字列の後継の文字列を返すメソッド
#  例   https://hackmd.io/@zuby/BklVXzZ6w
# "a".succ   => "b"
# "100".succ => "101"
# "###".succ => "##$"
# "を".succ  =>  "ん"


# --------------------------------------------------------------------------------------------------

# no.50
# 5kyu String incrementer

# def cakes(recipe, available)
  # pick_availavle = available.select { |ingredients| recipe.include?(ingredients) }
  # return 0  if recipe.size != pick_availavle.size
  # recipe.sort
  # pick_availavle.sort
  # recipe.map{ |ingredients|  pick_availavle[ingredients[0]] / ingredients[1] }.min
# end

# p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
# p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
# p cakes({"eggs"=>4, "flour"=>400},{}) == 0
# p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1

# recipe.collect { | k, v | available[k].to_i / v }.min  一番短い。recipeのkeyをそのまま使ってavailableの数量を取得できる。
# collectメソッド...ブロックを評価したものを全て集めた配列を返す。

# mapとcollectの違い   https://magazine.rubyist.net/articles/0038/0038-MapAndCollect.html
# map は「データ構造を保ったまま3、あるルールに従って元のデータ構造を別データ構造に変換する」   全体をまとまりとして捉える
# collect は「データ構造内の全ての要素に対して、ある処理を繰り返し実行し、その結果を集めたもの」   個々の要素を扱う


# --------------------------------------------------------------------------------------------------

# no.51  テストは通るが、codewars上でタイムアウトになる問題が解決できず
# 5kyu Primes in numbers

# require 'benchmark'

# result = Benchmark.realtime do
#   def prime_factors(n)
#     primes = []
#     divide_nums = (3..(n / 3)).step(2).to_a
#     while n != 1 do
#       if n % 2 == 0
#         n /= 2
#         primes << 2
#       else
#         divided = false
#         divide_nums.each do |num|
#           if n % num == 0
#             primes << num
#             n /= num
#             divided = true
#           end
#           break if divided
#         end
#       end
#     end
#     primes << n if n != 1
#     primes.uniq.map { |prime| primes.count(prime) > 1 ? "(#{prime}**#{primes.count(prime)})" : "(#{prime})" }.join
#   end
# end
# puts "処理時間 #{result}s"

# p prime_factors(7775460) == "(2**2)(3**3)(5)(7)(11**2)(17)"



# 素因数分解のライブラリがすごく便利

# require 'prime'
# p 68.prime_division => [[2, 2], [17, 1]] => 2 * 2 * 17 * 1 = 68
# p result = Prime.prime_division(100) => [[2, 2], [5, 2]] => 2 * 2 * 5 * 5 => 100


# --------------------------------------------------------------------------------------------------

# no.52
# 5kyu First non-repeating character

# def  first_non_repeating_letter(s)
  # char = s.gsub(/[\?|\!\+]/, '').chars.select{ |st| s.scan(/#{st}/i).count == 1 }.first
  # char.nil? ? '' : char.empty? ? "None" : char
# end

# p first_non_repeating_letter('a') == 'a'
# p first_non_repeating_letter('sTtress') == 'r'
# p first_non_repeating_letter('moonmen') == 'e'
# p first_non_repeating_letter('m?!+oonmen') == 'e'
# p first_non_repeating_letter('') == ''

# 記号は予めエスケープしておかないとエラーになる
# s.chars.find {|i| s.downcase.count(i)==1 || s.upcase.count(i)==1} || "" best practiceにっているが特殊文字に対応していない。


# --------------------------------------------------------------------------------------------------

# no.53
# 5kyu The Hashtag Generator

# def generateHashtag(str)
  # return false if str.strip == ''
  # st = str.split(' ').map! { |st| st.capitalize }.unshift("#").join
  # st.size > 140 || st == '' ? false : st
# end

# p generateHashtag("") == false
# p generateHashtag(" " * 200) == false
# p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
# p generateHashtag("Codewars") == "#Codewars"
# p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice"
# p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
# p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
# p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
# p generateHashtag("a" * 139) == "#A" + "a" * 138
# p generateHashtag("a" * 140) == false

# capitalizeメソッド...文字列の頭文字だけ大文字で残りを小文字にして返す
# stripメソッド...行頭行末の空白を消す。行間の空白は残す。

# 一番短い
# str = "#" << str.split.map(&:capitalize).join
# str.size <= 140 && str.size > 1 ? str : false


# --------------------------------------------------------------------------------------------------

# no.54
# 5kyu Greed is Good

# def score( dice )
  # point = 0
  # dice.group_by(&:itself).each do |d|
  #   case d[1].size
  #   when 5
  #     d[0] == 1 ? point += 1200 : d[0] == 5 ? point += 600 : point += d[0] * 100
  #   when 4
  #     d[0] == 1 ? point += 1100 : d[0] == 5 ? point += 550 : point += d[0] * 100
  #   when 3
  #     d[0] == 1 ? point += 1000 : point += d[0] * 100
  #   when 2
  #     d[0] == 1 ? point += 200 : d[0] == 5 ? point += 100 : ""
  #   else
  #     d[0] == 1 ? point += 100 : d[0] == 5 ? point += 50 : ""
  #   end
  # end
  # point
# end

# p score( [2, 3, 4, 6, 2] ) == 0
# p score( [2, 2, 2, 3, 3] ) == 200
# p score( [2, 4, 4, 5, 4] ) == 450
# p score( [1, 1, 1, 1, 4] ) == 1100
# p score( [1, 1, 1, 1, 5] ) == 1150

# 面白い回答 全ての計算を配列にして最後に足す
# [ dice.count(1) / 3 * 1000,
#   dice.count(6) / 3 * 600,
#   dice.count(5) / 3 * 500,
#   dice.count(4) / 3 * 400,
#   dice.count(3) / 3 * 300,
#   dice.count(2) / 3 * 200,
#   dice.count(1) % 3 * 100,
#   dice.count(5) % 3 * 50 ].reduce(:+)


# --------------------------------------------------------------------------------------------------

# no.55
# 5kyu Greed is Good

# def scramble(s1,s2)
#   s2.chars.group_by(&:itself).map { |st| s1.chars.count(st[0]) >= st[1].size }.all? { |bool| bool == true }
# end

# p scramble('rkqodlw','world') == true
# p scramble('cedewaraaossoqqyt','codewars') == true
# p scramble('katas','steak') == false
# p scramble('scriptjava','javascript') == true
# p scramble('scriptingjava','javascript') == true
# p scramble('','javascript') == false

# s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)} 一番短い


# --------------------------------------------------------------------------------------------------

# no.56
# 5kyu Rot13

# def rot13(string)
#   ascll_st = string.chars.map { |st| st =~ /[\?|\!|\+|\-|\n]/ ? st : st =~ /[a-zA-Z]+/ ? st.ord : st.to_s }
#   ascll_st.map! do |st|
#     p st
#     if st.is_a?(Integer)
#       if st < 91 && st + 13 > 90
#         st = st + 13 - 90 + 64
#       elsif st > 96 && st + 13 > 122
#         st = st + 13 - 122 + 96
#       else
#         st + 13
#       end
#     elsif st =~ /[\?|\!|\+|\-|\n]/
#       st
#     else
#       st
#     end
#   end
#   ascll_st.map(&:chr).join
# end


# p "grfg" == rot13("test")
# p "Grfg" == rot13("Test")
# p rot13("AZaz")
# p rot13("Ruby is cool!")
# p rot13("y7w5z9")

# ROT13...シザー暗号と呼ばれるアルファベットを13文字ずらす暗号技術。解読が簡単すぎてネタバレ防止などに使われている？

# 一番短い  trメソッド...第一引数の文字列を第二引数の文字列に変換する。 ROT13で調べると下記がそっくりそのまま見つかる
# string.tr("A-Za-z", "N-ZA-Mn-za-m")
# 例
# string = "abcde"
# puts string.tr("a-z", "A-Z") => "ABCDE"

# わかりやすい rotateメソッド...配列の中で引数のindex番号が先頭に来るように並び替える。引数がなければ１が指定される。
# origin = ('a'..'z').to_a.join + ('A'..'Z').to_a.join
# cipher = ('a'..'z').to_a.rotate(13).join + ('A'..'Z').to_a.rotate(13).join


# --------------------------------------------------------------------------------------------------

# no.57
# 5kyu RGB To Hex Conversion

# def rgb(r, g, b)
  # [r, g, b].map { |n| n < 0 ? n = 0 : n > 255 ? n = 255 : n }.map { |n| n.to_s(16).upcase.rjust(2, '0') }.join

  # clampメソッドを使えば短くできた [r, g, b].map { |n| n.clamp(0, 255).to_s(16).rjust(2, '0') }.join.upcase
# end

# p rgb(0, 0, 0) == '000000'
# p rgb(0, 0, -20) == '000000'
# p rgb(300,255,255) == 'FFFFFF'
# p rgb(173,255,47) == 'ADFF2F'

# '%02X' * 3 % [r, g, b].map{ |x| x.clamp(0, 255) } 一番短い。 配列内の r, g, b それぞれを16進数にする為、'%02X' * 3 としている。
# clampメソッド...第一引数（最低値）から第二引数（最大値）の範囲内収まらないものを最大値・最小値に変換する。rangeオブジェクトに対しても使える
# rjustメソッド...第一引数の桁になるまで第二引数の文字で埋める。文字はレシーバの左側にくる。


# --------------------------------------------------------------------------------------------------

# no.58
# 5kyu Find the smallest
# 頭がこんがらがったので保留。テスト内容：数値の中の1文字を移動させた時の最小値を探す。
# 考慮する条件
#   最小値が０か？
#   最小値が0かつ0のインデックスが1の場合は、インデックス0の値が移動する。
#   最小値が０以外かつその値のインデックスが０の場合は移動しない為、次に小さい値が移動する。
#   最小値が2つ以上存在する場合、一番桁の小さいものを移動する。

# def smallest(n)
#   p min = n.digits.min
#   if min == 0 && n.digits.count(min) == 1
#     move = n.to_s.index("0")
#     result = n.to_s.gsub(/#{min.to_s}/, "").to_i
#     return [result, min, move]
#   else
#     n.digits.count(min) == 1 ? move =  n.to_s.index(min.to_s) : move = n.to_s.reverse.index(min.to_s) * -1 - 1
#     list = n.to_s.chars
#     list.delete_at(move)
#     list.insert(0, min.to_s)
#     # p list.join.to_i
#     return p [list.join.to_i, move, ]
#   end
# end


# def smallest(n)
#   n_list = n.to_s.chars
#   n.digits.min == 0 ? min = n.digits.sort[1] : min = n.digits.min
#   min = n_list.sort[1].to_i if n_list.index(min.to_s) == 0 && min
#   if min == 0 && n.digits.count(min) == 1
#     b_move = n.to_s.index("0")
#     result = n.to_s.gsub(/#{min.to_s}/, "").to_i
#     return [result, 0, 1]
#   else
#     n.digits.count(min) == 1 ? b_move =  n.to_s.index(min.to_s) : b_move = n.to_s.reverse.index(min.to_s) * -1 - 1
#     # list = n_list
#     n_list.delete_at(b_move)
#     n_list.sort.index(min.to_s) == 0 ? n_list.insert(0, min.to_s) : n_list.insert(1, min.to_s)
#     p n_list.index(min.to_s)
#     a_move = n_list.index(min.to_s)
#     return p [n_list.join.to_i, b_move, a_move]
#   end
# end

# 最後の状態
# def smallest(n)
#   n_list = n.to_s.chars
#   n.digits.min != 0 ? target = n.digits.min : n_list.index("0") == 1 ? target = n_list[0].to_i : target = n.digits.sort[1]
#   target = n_list.sort[1].to_i if n_list.index(target.to_s) == 0
#   if target == 0 && n.digits.count(target) == 1
#     b_move = n.to_s.index("0")
#     result = n.to_s.gsub(/#{target.to_s}/, "").to_i
#     return [result, n_list.index(target.to_s), 1]
#   else
#     n.digits.count(target) == 1 ? b_move =  n.to_s.index(target.to_s) : b_move = n.to_s.reverse.index(target.to_s) * -1 - 1
#     n_list.delete_at(b_move)
#     b_move = n_list.length + b_move + 1 if b_move < 0
#     n_list.sort.index(target.to_s) == 0 ? n_list.insert(0, target.to_s) : n_list.insert(1, target.to_s)
#     n_list.index(target.to_s)
#     a_move = n_list.index(target.to_s)
#     return p [n_list.join.to_i, b_move, a_move]
#   end
# end

# p smallest(261235) == [126235, 2, 0]
# p smallest(209917) == [29917, 0, 1]
# p smallest(20991027) == [2099127, 5, 0]  # 最小値が2つの場合も考慮しておく必要がありそう
# p smallest(285365) == [238565, 3, 1]
# p smallest(269045) == [26945, 3, 0]
# p smallest(296837) == [239687, 4, 1]


# --------------------------------------------------------------------------------------------------

# no.59
# 6kyu Find the odd int

# def find_it(seq)
#   seq.uniq.select { |n| seq.count(n).odd? }.first
# end

# p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
# p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
# p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
# p find_it([10]) == 10
# p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10


# seq.find{|c| seq.count(c).odd? }
# seq.detect { |n| seq.count(n).odd? }
# detectメソッド...ブロックを評価して最初に真になるものを返す


# --------------------------------------------------------------------------------------------------

# no.60
# 6kyu Take a Ten Minute Walk

# def is_valid_walk(walk)
#   p walk.count('n') == walk.count('s') && walk.count('w') == walk.count('e') && walk.count == 10
# end

# is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == 'true'
# is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == 'false'
# is_valid_walk(['w']) == 'false'
# is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == 'false'


# --------------------------------------------------------------------------------------------------

# no.61
# 6kyu Consecutive strings

# def longest_consec(strarr, k)
  # return "" if strarr.size < 1 ||  k < 1 || strarr.size < k
  # united = []
  # strarr.each_with_index do |str, i|
  #   break if i + k > strarr.size
  #   k.times do |j|
  #     break if j == k - 1
  #     str += strarr[i + j + 1]
  #   end
  #   united << str
  # end
  # maximam = united.map { |str| str.size }.max
  # united.find { |str| str.size == maximam }
# end

# p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2) == "abigailtheta"
# p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1) == "oocccffuucccjjjkkkjyyyeehh"
# p longest_consec([], 3) == ""
# p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) == "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
# p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) == "wlwsasphmxxowiaxujylentrklctozmymu"
# p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
# p longest_consec(["it","wkppv", "ixoyx", "3452", "zzzzzzzzzzzz"], 3) == "ixoyx3452zzzzzzzzzzzz"
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) == ""
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0) == ""

# 短い回答2つ
# betweenメソッド...レシーバが第一引数（min）、第二引数(max)の範囲ないにあればtrueを返す。文字列の場合も同じ。
# each_consメソッド...要素を引数の値ごとに区切って繰り返して返す(Enumeratorとして返る)。(1..4).each_cons(2).to_a => [[1, 2], [2, 3], [3, 4]]
# return "" unless k.between?(1, strarr.length)
# strarr.each_cons(k).map(&:join).max_by(&:length) || ""

# k > strarr.size || k <= 0 ? '' : strarr.each_cons(k).map(&:join).max_by(&:size)


# --------------------------------------------------------------------------------------------------