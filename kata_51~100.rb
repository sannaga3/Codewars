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

# no.62
# 6kyu Delete occurrences of an element if it occurs more than n times

# def delete_nth(order,max_e)
  # new_list = []
  # order.each { |n| new_list << n if new_list.count(n) < max_e }
  # new_list
# end

# p delete_nth([20,37,20,21], 1) == [20,37,21]
# p delete_nth([1,1,3,3,7,2,2,2,2], 3) == [1, 1, 3, 3, 7, 2, 2, 2]

# 一番短い
# occurrences = Hash.new(0)
# order.reject { |item| (occurrences[item] += 1) > max_e }

# occurencesにハッシュとして各値の数を記録していき、max_eを超えていたら削除している
# order.reject! do |item|
#   p occurences
#   (occurrences[item] += 1) > max_e
# end


# --------------------------------------------------------------------------------------------------

# no.63
# 6kyu Valid Braces

# def validBraces(braces)
#   open = 0
#   opens = []
#   braces.chars.each do |char|
#     opens << char if char == "(" || char == "{" || char == "["
#     open += 1 if char == "(" || char == "{" || char == "["
#     open -= 1 if char == ")" ||  char == "}" || char == "]"
#     return false if open < 0
#     if char == ")" || char == "}"|| char == "]"
#       if opens.last + char == "()" || opens.last + char == "{}" || opens.last + char == "[]"
#         opens.pop
#       else
#         return false
#       end
#     end
#   end
#   open == 0 && opens == [] ? true : false
# end

# p validBraces( "()" ) == true
# p validBraces( "[(])" ) == false
# p validBraces("(){}[]") == true
# p validBraces("([{}])") == true
# p validBraces("(}")  == false
# p validBraces("[(])")  == false
# p validBraces("[({})](]") ==  false

# 一番短い。 (){}[]を外側から徐々に消していく
# while braces.gsub!(/(\(\)|\[\]|\{\})/,'') do; end
# braces.empty?

# 面白い回答 カッコをペアで扱うことで、falseの判定が簡単にできる
# pairs = {")" => "(", "]" => "[", "}" => "{"}
# stack = []
# braces.each_char {|c|
#   case c
#     when "(", "[", "{" then stack << c
#     when ")", "]", "}" then return false if stack.pop != pairs[c]
#   end
# }
# stack.empty?


# --------------------------------------------------------------------------------------------------

# no.64
# 6kyu Does my number look big in this?

# def narcissistic?(value)
#   digits = value.digits
#   digits.map { |n| n ** digits.size }.sum == value
# end

# p narcissistic?(5) == true
# p narcissistic?(153) == true
# p narcissistic?(1633) == false


# --------------------------------------------------------------------------------------------------

# no.65
# 6kyu Persistent Bugger

# def persistence(n)
#   times = 0
#   while n.digits.size != 1 do
#     n = n.digits.inject(:*)
#     times += 1
#   end
#   times
# end

# p persistence(39) == 3
# p persistence(4) == 0
# p persistence(25) == 2
# p persistence(999) == 4
# p persistence(444) == 3

# n < 10 == 0 になるまで n.digits.reduce(&:*) を繰り返している。０になった時、1 + 1 + 0 のように、繰り返した分だけ 1 が加算されて返る。
# n < 10 ? 0 : 1 + persistence(n.digits.reduce(&:*)) 一番短い


# --------------------------------------------------------------------------------------------------

# no.66
# 6kyu Sequences and Series

# def get_score(n)
  # add_score = [*(1..n)].inject(0) { |sum, score| sum + score * 50 }
# end

# p get_score(1) == 50
# p get_score(2) == 150
# p get_score(3) == 300
# p get_score(4) == 500
# p get_score(5) == 750

# (1..n).inject(:+) * 50 一番短い。 1..nを足してから50をかける


# --------------------------------------------------------------------------------------------------

# no.67
# 6kyu Sequences and Series

# def f(s)
#   sts = ""
#   list = []
#   s.chars.each do |st|
#     sts += st
#     count = s.scan(sts).size
#     if s.scan(sts).join == s && sts.size > 1 && count > 1
#       list << [sts, count]
#     end
#   end
#   list.size == 0 ? result = [s, 1] : list.size == 1 ? result = list.first : result = list.map { |l| l[1] }.max
#   result = list.select { |r| r[1] == result }.last if list.size > 1
#   result
# end

# p f("ababab") == ["ab", 3]
# p f("abcde") == ["abcde", 1]
# p f("abceabctabc")
# p f("ababeeabab")

# 対象の文字列を繰り返して全体の文字列と一致する。この条件に最初から気づけていれば短く書けたかもしれない。

# わかりやすい
# uniq_char = s.chars.uniq.join('')
# split_array = s.scan(uniq_char)
# [split_array.length > 1 ? uniq_char : s,split_array.length]


# --------------------------------------------------------------------------------------------------

# no.68
# 6kyu Encrypt this!

# def encrypt_this(text)
  # return "" if text == ""
  # text.split(" ").map { |st| st.chars.first.ord.to_s + (st.size > 1 ? st.chars.last : "") + (st.size > 3 ? st.scan(/^..(.*).$/).first.first : "" ) + (st.size > 2 ? st.chars[1] : "") }.join(' ')
# end

# p encrypt_this("") == ""
# p encrypt_this("A wise old owl lived in an oak") == "65 119esi 111dl 111lw 108dvei 105n 97n 111ka"
# p encrypt_this("The more he saw the less he spoke") == "84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp"
# p encrypt_this("The less he spoke the more he heard") == "84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare"
# p encrypt_this("Why can we not all be like that wise old bird") == "87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri"
# p encrypt_this("Thank you Piotr for all your help") == "84kanh 121uo 80roti 102ro 97ll 121ruo 104ple"

# text.gsub(/\b(\w)(\w)?(\w+?)?(\w)?\b/) { "#{$1.ord}#{$4}#{$3}#{$2}" } 一番簡単


# --------------------------------------------------------------------------------------------------

# no.69
# 6kyu Phone Number

# def validPhoneNumber(phoneNumber)
#   phoneNumber == phoneNumber.scan(/\(\d{3}\)\s\d{3}-\d{4}/).first
# end

# p validPhoneNumber("(123) 456-7890") == true

# 参考になる書き方。!!でbooleanとして返す
# !!phoneNumber[/\A\(\d{3}\)\s\d{3}-\d{4}\z/]
# !!(phoneNumber =~ /^\(\d{3}\) \d{3}-\d{4}$/)


# --------------------------------------------------------------------------------------------------

# no.70
# 6kyu Which are in?

# def in_array(array1, array2)
#   result = []
#   array1.select do |a1|
#     array2.each do |a2|
#       result << a1 if a2.include?(a1)
#       break if a2.include?(a1)
#     end
#   end
#   result.sort
# end

# a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# p in_array(a1, a2) == ["arp", "live", "strong"]
# a1 = ["tarp", "mice", "bull"]
# p in_array(a1, a2) == []


# array1.select { |st| array2.select { |s| s.include?(st) }}        上手くいかなかったコード
# result = array1.select { |st| array2.select { |s| s =~ /#{st}/ }} 上手くいかなかったコード

# 一番短い
# array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
# any?メソッド...すべての要素が偽の場合 false を返す。真の要素があればその時点で true を返す。


# --------------------------------------------------------------------------------------------------

# no.71
# 6kyu Consonant value

# def solve(s)
  # s.gsub!(/[(a)(i)(u)(e)(o)]/, ' ').split(' ').map(&:chars).map { |st| st.map { |str| [*('a'..'z')].index(str) + 1 } }.map(&:sum).max
# end

# p solve("zodiac") == 26
# p solve("chruschtschov") == 80
# p solve("khrushchev") == 38
# p solve("strength") == 57
# p solve("catchphrase") == 73
# p solve("twelfthstreet") == 103
# p solve("mischtschenkoana") == 80

# s.split(/[aeiou]/).map{|x| p x.sum - x.size * 96} 一番短い。

# アスキーコードとビット数に関して  https://e-words.jp/w/ASCII.html
# p [*('a'..'z')].map(&:sum)
# p [*('A'..'Z')].map(&:sum)
# p [*('1'..'11')].map(&:sum)
# p 'a'.sum == '10'.sum
# p ['a', 'b', 'c'].map { |x| p x.sum - 96 }.sum
# p ['ab'].map { |x| x.sum - 96 * 2 }.sum
# p ['あ', 'い', 'う', 'ん'].map(&:sum)
# p ['ア', 'イ', 'ウ', 'ン'].map(&:sum)


# --------------------------------------------------------------------------------------------------


# no.72
# 5kyu Don't Drink the Water

# def separate_liquids(glass)
  # return [] if glass == []
  # elements = glass.flatten
  # return p ("O" * elements.count("O") + "A" * elements.count("A") + "W" * elements.count("W") + "H" * elements.count("H")).chars.map{ |st| Array.new(1, st)} if glass[0].size == 1
  # ("O" * elements.count("O") + "A" * elements.count("A") + "W" * elements.count("W") + "H" * elements.count("H")).chars.each_slice(glass[0].size).to_a
# end


# p separate_liquids([['H', 'H', 'W', 'O'],['W','W','O','W'],['H','H','O','O']]) == [['O', 'O', 'O', 'O'],['W','W','W','W'],['H','H','H','H']]
# p separate_liquids([['A','A','O','H'],['A', 'H', 'W', 'O'],['W','W','A','W'],['H','H','O','O']]) == [['O','O','O','O'],['A', 'A', 'A', 'A'],['W','W','W','W'],['H','H','H','H']]
# p separate_liquids([['A','H','W','O']]) == [['O','A','W','H']]
# p separate_liquids([['A'],['H'],['W'],['O']]) == [['O'],['A'],['W'],['H']]
# p separate_liquids([]) == []

# 一番簡単？
  # return glass if glass.empty?
  # glass
  #   .flatten
  #   .sort_by { |e| p %w(O A W H).index(e) }
  #   .each_slice(Array(glass[0]).size)
  #   .to_a

# sort_byのブロックに配列を指定すると、その順番に並び替えてくれる。
# p "ababaaaabbbbbbbaaabba".chars.sort_by { |s| %w(b a).index(s) }


# --------------------------------------------------------------------------------------------------

# no.73
# 6kyu Playing with digits

# def dig_pow(n, p)
  # result = n.digits.reverse.each_with_index.map { |d, i| d ** (i + p) }.sum
  # result % n == 0 ? result / n : -1
# end

# p dig_pow(89, 1) == 1
# p dig_pow(92, 1) == -1
# p dig_pow(46288, 3) == 51


# --------------------------------------------------------------------------------------------------

# no.74
# 6kyu Build Tower

# def towerBuilder(n_floors)
#   size = n_floors * 2 - 1
#   element=  [*(1..n_floors)].map { |n| "#{' ' * ((size - (2 * n - 1)) / 2)}#{'*' * (2 * n - 1)}#{' ' * ((size - (2 * n - 1)) / 2)}" }
# end

# p towerBuilder(1) == ['*']
# p towerBuilder(2) == [' * ', '***']
# p towerBuilder(3) == ['  *  ', ' *** ', '*****']

# 一番読みやすい
# (1..n).map do |i|
#   space = ' ' * (n - i)
#   stars = '*' * (i * 2 - 1)
#   space + stars + space
# end


# --------------------------------------------------------------------------------------------------

# no.75
# 6kyu Multiples of 3 or 5

# def solution(number)
#   (1..(number - 1)).to_a.select { |n| n % 3 == 0 || n % 5 == 0 }.sum
# end

# p solution(10) == 23
# p solution(20) == 78
# p solution(200) == 9168


# --------------------------------------------------------------------------------------------------

# no.76
# 6kyu The Vowel Code

# def encode(s)
  # voewl = ['a', 'e', 'i', 'o', 'u']
  # encoded = s.chars.map { |st| voewl.index(st) ? voewl.index(st) + 1 : st }.join
# end

# def decode(s)
  # voewl = { '1' => 'a', '2' => 'e', '3' => 'i', '4'=> 'o', '5'=> 'u' }
  # decoded = s.chars.map { |st| voewl.key?(st) ? voewl.values_at(st) : st }.join
# end

# p encode('hello') == 'h2ll4'
# p encode('How are you today?') == 'H4w 1r2 y45 t4d1y?'
# p encode('This is an encoding test.') == 'Th3s 3s 1n 2nc4d3ng t2st.'
# p decode('h2ll4') ==  'hello'

# 一番短い。 trメソッド使えば簡単だった
# def encode(s)
#   s.tr("aeiou", "12345")
# end

# def decode(s)
#   s.tr("12345", "aeiou")
# end

# p 'abcde'.tr('abcf', '1234')


# --------------------------------------------------------------------------------------------------

# no.77
# 6kyu Bit Counting

# def count_bits(n)
#   n.to_s(2).count("1")
# end

# p count_bits(0) == 0
# p count_bits(4) == 1
# p count_bits(7) == 3
# p count_bits(9) == 2
# p count_bits(10) == 2


# --------------------------------------------------------------------------------------------------

# no.78
# 6kyu Mexican Wave

# def wave(str)
#   result = []
#   splited = str.chars.map { |st| str }
#   splited.each_with_index do |k, v|
#     k = k.chars
#     k[v].upcase!
#     result << k.join
#   end
#   result.delete(str)
#   result
# end

# p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
# p wave("") == []
# p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

# 一番わかりやすい。 str[0...idx] + char.upcase + str[idx+1..-1] で簡単に1文字だけを大文字にできる
# result = []
# chars = str.downcase.chars
# chars.each_with_index do |char, idx|
#   next if char == " "
#   result << str[0...idx] + char.upcase + str[idx+1..-1]
# end
# result


# --------------------------------------------------------------------------------------------------

# no.79
# 6kyu World Bits War

# def bits_war(numbers)
#   odd_or_even = numbers.partition { |n| n.odd? }
#   odd_or_even.map! { |s| s.map { |n| n.to_s(2) }.map { |n| n[0] == "-" ? n.chars.count("1") * -1 : n.chars.count("1") }.sum }
#   odd_or_even[0] == odd_or_even[1] ? "tie" : odd_or_even[0] > odd_or_even[1] ? "odds win" : "evens win"
# end

# p bits_war([1,5,12]) == "odds win"
# p bits_war([7,-3,20]) == "evens win"
# p bits_war([7,-3,-2,6]) == "tie"
# p bits_war([-3,-5]) == "evens win"
# p bits_war([]) == "tie"


# --------------------------------------------------------------------------------------------------

# no.80
# 6kyu ASCII hex converter

# module Converter
#   def self.to_ascii(hex)
#     hex.chars.each_slice(2).to_a.map(&:join).map { |str| str.hex }.map(&:chr).join
#   end

#   def self.to_hex(ascii)
#     ascii.chars.map { |str| str.ord }.map { |n| n.to_s(16) }.join
#   end
# end

# str = "Look mom, no hands"
# hex = "4c6f6f6b206d6f6d2c206e6f2068616e6473"

# p Converter.to_hex(str) == hex
# p Converter.to_ascii(hex) == str


# 一番簡単
# def self.to_ascii(hex)
#   [hex].pack("H*")
# end

# def self.to_hex(ascii)
#  ascii.unpack("H*")[0]
# end

# packメソッド...配列の内容を template で指定された文字列にしたがって、バイナリとしてパックした文字列を返す。
# unpackメソッド...packメソッドの逆
# p "Look mom, no hands".unpack("H*")[0]
# p ["4c6f6f6b206d6f6d2c206e6f2068616e6473"].pack("H*")

# unpack("H*")ではShift_JISに変換されているっぽい  https://seiai.ed.jp/sys/text/java/shiftjis_table.html
# p "0".unpack("H*")
# p "1".unpack("H*")
# p "2".unpack("H*")
# p "3".unpack("H*")
# p "9".unpack("H*")
# p "A".unpack("H*")
# p "P".unpack("H*")

# p [97, 98, 99].pack("U")
# p [97, 98, 99].pack("U*")
# p "abc".each_codepoint { |s| p s }

# p "1".encoding
# p 'abcd'.unpack('H*').first == ['61626364'].pack('H*')


# --------------------------------------------------------------------------------------------------

# no.81
# 6kyu Swap Case Using N

# def spec_swap(s, n)
  # bit = n.to_s(2)
  # s_size = s.size
  # bit_size = bit.chars.size
  # bits = 0
  # bits_i = 0

  # if s_size > bit_size
  #   bits = bit * (s_size / bit_size)
  #   surplus = s_size % bit_size
  #   bits += bit[0..(surplus - 1)] if s_size % bit_size != 0
  #   new_bits = bits.chars
  # else
  #   bits = bit
  #   new_bits = bits.chars
  # end
  # bits.chars.each_with_index.map do |k, v|
  #   break if !s.chars[v]
  #   if s.chars[v] == ' ' || !s.chars[v].scan(/([\?|\!|\,|\.|\\|\/|\+|\-|\:|\;])/).empty?
  #     new_bits.insert(bits_i , ' ')
  #   end
  #   bits_i += 1
  # end

  # result = []
  # s.chars.each_with_index do |k, v|
  #   if new_bits[v] == "1" && s.chars[v] != ' ' && s.chars[v].scan(/([\?|\!|\,|\.|\\|\/|\+|\-|\:|\;])/).empty?
  #     if s[v].ord < 96
  #       result << k.downcase
  #     else
  #       result << k.upcase
  #     end
  #   else
  #     result << k
  #   end
  # end
  # result.join
# end

# p spec_swap("Hello world!", 11) == "heLLO wORLd!"
# p spec_swap("the quick broWn fox leapt over the fence", 9) == "The QUicK BrowN foX LeaPT ovER thE FenCE"
                                                              #  100 11001 10011 001 10011 0011 001 10011
# p spec_swap("eVerybody likes ice cReam", 85) == "EVErYbODy LiKeS IcE creAM"
# p spec_swap("gOOd MOrniNg", 7864) == "GooD MorNIng"
# p spec_swap("how are you today?", 12345) == "HOw are yoU TOdaY?"
# p spec_swap("the lord of the rings", 0) == "the lord of the rings"
# p spec_swap("", 11345) == ""

# random test
# p spec_swap("W/eNHszZK.Y   GuV p frxQpAe aMyoQ !,  f ,mIUZxTIn DUFzbtD F fKDr.cm l,vHCGGFDrYfbh ITiJkXI p Kfge NsFKHooPFOyaGm xKn!/wOCIy  hS iD jNXZ RTJXE! LEkk Et  oMvSH uyqykn wiVT", 85711) == "w/enHsZzk.Y   gUV p FRXqPAE aMYOq !,  f ,MiUZXtiN dUfzbTd f fkdr.cM L,VhcGgFDRyFbH iTijKxi P KFge nSfKhOoPfoYAgm XKn!/WocIY  HS id Jnxz RtJXe! lekK et  omVsh UyQykN WIVt"

# 一番短い
# mask = ('%b' % n).chars.cycle
# s.chars.map { |c| c =~ /[a-z]/i && mask.next == '1' ? c.swapcase : c }.join
# cycleメソッド...レシーバの要素を引数の回数繰り返しブロックを呼び出す。引数がなければ無限に続く。
# nextメソッド...レシーバの次の要素を呼び出す。
# swapcaseメソッド...文字列の大文字小文字を入れ替える

# ユニーク？
# bs = n.digits(2).reverse.map(&:nonzero?).cycle
# s.gsub(/\p{L}/){ |c| bs.next ? c.swapcase : c }
# nonzeroメソッド...自身がゼロの時 nil を返し、非ゼロの時 self を返す。


# --------------------------------------------------------------------------------------------------

# no.82
# 6kyu Count the divisible numbers

# require 'benchmark'

# result = Benchmark.realtime do
  # def divisible_count(x, y, k)
  #   y / k - (x - 1) / k

    # 値が１ズレることがある
    # first = (x..y).find { |n| n % k == 0 }
    # return 0 if first == nil
    # r = (first..y).size / k
    # r += 1 if y % k == 0
    # r

    # タイムオーバー
    # list = [first]
    # while (first + k) <= y
    #   list << first += k
    # end
    # list.size

    # タイムオーバー
    # n = 1
    # while (first + k) <= y
    #   first += k
    #   n += 1
    # end
    # n

    # タイムオーバー
    # (x..y).select { |n| n % k == 0 }.size
  # end
# end
# puts "処理時間 #{result}s"

# p divisible_count(6, 11, 2) == 3
# p divisible_count(6, 12, 2) == 4
# p divisible_count(5, 13, 2) == 4


# --------------------------------------------------------------------------------------------------

# no.83
# 7kyu Disemvowel Trolls

# def disemvowel(str)
#   str.gsub(/[aiueo]/i, "")
# end

# p disemvowel("This website is for losers LOL!") == "Ths wbst s fr lsrs LL!"
# str.delete "aAeEiIoOuU" でもOK


# --------------------------------------------------------------------------------------------------

# no.84
# 7kyu Highest and Lowest

# def high_and_low(numbers)
#   array = numbers.split(' ').map(&:to_i)
#   "#{array.max} #{array.min}"
# end

# p high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4") == "42 -9"

# numbers.split.map(&:to_i).minmax.reverse.join(' ')  一番短い
# minmaxメソッド...最小値と最大値を配列として返す %w[1 2 3 4 5].minmax  => ["1", "5"]   %w[a b c d e].minmax  => ["a", "e"]


# --------------------------------------------------------------------------------------------------

# no.85
# 7kyu Exes and Ohs

# def XO(str)
#   str.scan(/x/i).count == str.scan(/o/i).count
# end

# p XO('xo') == true
# p XO('XO') == true
# p XO('xo0') == true
# p XO('xxxoo') == false
# p XO("xxOo") == true

# str.count('Xx') == str.count('oO') 一番簡単


# --------------------------------------------------------------------------------------------------

# no.86
# 8kyu ASCII Total

# def uni_total(string)
#   string.chars.map(&:ord).sum
# end

# p uni_total("a") == 97
# p uni_total("b") ==  98
# p uni_total("c") == 99
# p uni_total("") == 0
# p uni_total("aaa") == 291
# p uni_total("abc") == 294
# p uni_total("Mary Had A Little Lamb") == 1873
# p uni_total("Mary had a little lamb") == 2001
# p uni_total("CodeWars rocks") == 1370
# p uni_total("And so does Strive") == 1661

# string.sum で良かった


# --------------------------------------------------------------------------------------------------

# no.87
# 7kyu String ends with?

# def solution(str, ending)
  # str.match(/#{ending}$/).to_s == ending ダメだった答え。

  # ending.reverse! == str.reverse![0..(ending.length - 1)]
  # str.slice(-(ending.length), ending.length) == ending
# end

# p solution('abc', 'bc') == true
# p solution(':-)', ':-(') == false

# str.end_with?(ending) 一番簡単
# end_withメソッド...レシーバの最後が引数で終わっていればtrueを返す。

# str.match? /#{Regexp.quote(ending)}\z/
# quoteメソッド...正規表現の中で特別な意味を持つ文字の直前にエスケープ文字(バックスラッシュ)を挿入した文字列を返す。


# --------------------------------------------------------------------------------------------------

# no.88
# 8kyu Return Negative

# def make_negative(num)
  # num < 1 ? num : -num

  # -num.abs
# end

# p make_negative(42) == -42


# --------------------------------------------------------------------------------------------------

# no.89
# 7kyu Return Negative

# def is_triangular(t)
#   i = 0
#   while i <= t
#    return true if i * (i + 1) / 2 == t
#     i += 1
#   end
#   false
# end

# p is_triangular(1) ==  true
# p is_triangular(3) ==  true
# p is_triangular(6) ==  true
# p is_triangular(10) ==  true
# p is_triangular(15) ==  true
# p is_triangular(21) ==  true
# p is_triangular(28) ==  true
# p is_triangular(2) == false
# p is_triangular(7) == false
# p is_triangular(14) == false
# p is_triangular(27) == false

# (Math.sqrt(8 * t + 1) % 1).zero? 一番短い。平方根を求めて１で割った時余りが出るかどうか。
# sqrtメソッド...非負整数 n の整数の平方根を返す。小数点以下は切り捨て。Integer.sqrt(24) # => 4  Integer.sqrt(25) # => 5


# --------------------------------------------------------------------------------------------------

# no.90
# 7kyu Area of an arrow

# def arrow_area(a, b)
  # a * b / 4.0
# end

# p arrow_area(4,2) == 2
# p arrow_area(7,6) == 10.5
# p arrow_area(25,25) == 156.25


# --------------------------------------------------------------------------------------------------

# no.91
# 7kyu Reverse the bits in an integer

# class Integer
#   def reverse
#     self.to_s(2).reverse.to_i(2)
#   end
# end

# p 417.reverse == 267
# p 267.reverse == 417
# p 0.reverse == 0
# p 2017.reverse == 1087
# p 1023.reverse == 1023
# p 1024.reverse == 1

# selfは付けなくてもOK
# digits(2).join.to_i(2)  digitsならreverseは不要


# --------------------------------------------------------------------------------------------------

# no.92
# 7kyu Largest Square Inside A Circle

# def area_largest_square(r)
#   (r * 2) ** 2 / 2
# end

# p area_largest_square(5) == 50
# p area_largest_square(7) == 98
# p area_largest_square(50) == 5000

# --------------------------------------------------------------------------------------------------

# no.93
# 7kyu Power of two

# def power_of_two?(x)
  # return false if x == 0
  # if x % 100 == 0
  #   x /= 100
  #   power_of_two?(x)
  # elsif x % 2 == 0
  #   x /= 2
  #   power_of_two?(x)
  # else
  #   x == 1 ? true : false
  # end
# end

# p power_of_two?(2) == true
# p power_of_two?(4096) == true
# p power_of_two?(5) == false
# p power_of_two?(33554432) == true

# 一番簡単
# x.to_s(2).scan(/1/).length == 1

# これも簡単
# (0..x).each do |num|
#   return true if 2 ** num == x
#   return false if 2 ** num >= x
# end

# x.bit_length > (x - 1).bit_length 一番短い。2の累乗の時に桁が変わるのをbit_lengthで確認している。
# bit_lengthメソッド...selfを表すのに必要なビット数を返す。0 や -1 の場合は 0 を返す

# p 1.bit_length
# p 2.bit_length
# p 3.bit_length
# p 5.bit_length
# p 10.bit_length
# p 11.bit_length
# p 12.bit_length


# --------------------------------------------------------------------------------------------------

# no.94
# 7kyu Perimeter sequence

# def perimeter_sequence(a, n)
#   a * n * 4
# end

# perimeter_sequence(1,3) == 12


# --------------------------------------------------------------------------------------------------