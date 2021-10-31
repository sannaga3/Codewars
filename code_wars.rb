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

# no.19
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
  # strings.select{ |str| alphabet.include?(str) }.empty? ? "" : strings.each_with_index { |k, v| alphabet.include?(k) ? k : strings.delete_at(v) }.map { |str| alphabet.index(str) + 1 if alphabet.index(str) != nil }.select { |n| n != nil }.join(' ')
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

