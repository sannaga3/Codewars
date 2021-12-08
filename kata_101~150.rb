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
