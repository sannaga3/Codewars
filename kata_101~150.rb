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

# no.102
# 7kyu Digitize

# def digitize(n)
#   n.to_s.chars.map(&:to_i)
# end

# p digitize(123) == [1,2,3]
# p digitize(1) == [1]
# p digitize(0) == [0]
# p digitize(1230) == [1,2,3, 0]
# p digitize(8675309) == [8,6,7,5,3,0,9]


# --------------------------------------------------------------------------------------------------

# no.103
# 7kyu String prefix and suffix

# def solve st
  # suffix = []
  # (0..((st.size - 2) / 2)).each { |n| suffix << st[0..n] if st[(-n - 1)..(st.size - 1)].include?(st[0..n]) }
  # suffix == [] ? 0 : suffix.last.size
# end

# p solve("abcd") == 0
# p solve("abcda") == 1
# p solve("abcdabc") == 3
# p solve("abcabc") == 3
# p solve("abcabca") == 1
# p solve("aaaaa") == 2
# p solve("aaaa") == 2
# p solve("aaa") == 1
# p solve("aa") == 1
# p solve("a") == 0

# p st[/\A(.*).*\1\z/, 1].size 一番短い。  左に似た回答  st.scan(/^(.+).*(\1)$/)[0][0].length rescue 0
# p st[/\A(.*).*/, 1]  #行頭から始まる文字列全パターンを全てマッチ
# \1 はマッチした１つ目。接頭語と接尾語に分けているので、１つ目のマッチが接尾語に当たる。  https://docs.ruby-lang.org/ja/latest/method/String/i/sub.html

# ^$ と \A\z の違い https://qiita.com/jnchito/items/ea7832df6f64a9034872

# downtoメソッドを使った回答
# st.size.downto(0){|i|return i if !i or (st.size >= 2 * i and st.slice(0,i) == st.slice(-i,st.size-1))}; 0
# downtoメソッド...self から min まで 1 ずつ減らしながらブロックを繰り返し実行する。3.downto(1) {|i| p i } => 321


# --------------------------------------------------------------------------------------------------

# no.104
# 7kyu Monotone travel

# def is_monotone(heights)
#   heights.each_cons(2).all? { |a, b| a <= b }
# end

# p is_monotone(Array(1..11)) == true
# p is_monotone([5,5,5,5,5,5,5]) == true
# p is_monotone([]) == true
# p is_monotone([1]) == true

# p is_monotone(Array(0..5).collect{|x| -x}) == false
# p is_monotone(Array(0..45).collect{|x| 40-x}) == false

# heights == heights.sort 一番かんたん


# --------------------------------------------------------------------------------------------------

# no.105
# 7kyu Character Counter

# def validate_word(word)
#   word.downcase.chars.uniq.map { |st| word.downcase.count(st) }.uniq.size == 1
# end

# p validate_word("abcabc") == true
# p validate_word("Abcabc") == true
# p validate_word("AbcabcC") == false
# p validate_word("AbcCBa") == true
# p validate_word("pippi") == false
# p validate_word("?!?!?!") == true
# p validate_word("abc123") == true
# p validate_word("abcabcd") == false
# p validate_word("abc!abc!") == true
# p validate_word("abc:abc") == false
# p validate_word("abccabcd") ==  false

# word.chars.group_by(&:upcase).values.uniq(&:count).one? uniqで何度も繰り返し文が発行されるのは良くないと思ったが、one?も内部で繰り返し文を発行していそう。速度はあまり変わらないかも？


# --------------------------------------------------------------------------------------------------

# no.106
# 7kyu Maximum Multiple

# def max_multiple(divisor, bound)
  # range = bound.downto(bound - divisor).to_a
  # range.find { |n| n % divisor == 0 }
# end

# p max_multiple(2,7) == 6
# p max_multiple(3,10) == 9
# p max_multiple(7,17) == 14
# p max_multiple(10,50) == 50
# p max_multiple(37,200) == 185
# p max_multiple(7,100) == 98

# bound - bound % divisor 一番簡単。 bound を divisor で割った余りを引けば自ずと最大公約数になる。

# --------------------------------------------------------------------------------------------------

# no.107
# 7kyu Reverse a Number

# def reverse_number(n)
  # n > 0 ? n.digits.join.to_i : n.abs.digits.join.to_i * -1
# end

# p reverse_number(123) == 321
# p reverse_number(-123) == -321
# p reverse_number(1000) == 1
# p reverse_number(4321234) == 4321234
# p reverse_number(5) == 5
# p reverse_number(0) == 0
# p reverse_number(98989898) == 89898989

# n.abs.digits.join.to_i * (n <=> 0) 一番短い。
# (n <=> 0) 左が大きければ 1, 等しければ0, 右が大きければ -1 を返す。  https://docs.ruby-lang.org/ja/latest/doc/symref.html#langl
# a = 10
# p (a <=> 0)
# b = -10
# p (b <=> 0)
# c = -10
# p c.abs * 3 * (c <=> 0)


# --------------------------------------------------------------------------------------------------