# zipメソッド...２つの配列の要素数が同じ場合、同じindex番号の要素を組み合わせて配列を生成する
# to_iメソッド...引数をn進数として文字列から変換する
# digitsメソッド...各桁を数値のまま配列に格納する
# sort_byメソッドで、ブロックで評価してから並び替える
# flattenメソッド・・・n次元配列が１次元浅くなるように要素を合わせる。
# partitionメソッド...ブロックの条件を満たすものと満たさないもの、２種類配列に分別する。
# one?メソッド...要素もしくはブロックに対して真が1つだけであればtrueそうでなければfalseを返す。
# ordメソッド...文字をASCIIコードのコードポイントへ変換する。a ＝ 97なので、-96することで a ＝ 1 から順番に番号を割り当てることができる。コードポイントから文字へ変換する場合は.chr   https://maku77.github.io/ruby/number/ascii-char.html
# is_aメソッド...対象が引数のクラスと同じか、もしくはそのサブクラスの場合trueを返す
# chunkメソッド...要素を前から順にブロックで評価し、前の評価と次の評価が異なる場合、次の評価は前と別の配列に区切られる。
# allメソッド...ブロックの中の評価が全て真の場合のみ true を返す
# concatメソッド...配列か文字列に対して追加したいものを引数に指定する。文字列と数字を引数にした場合、全てを文字列として返す。
# min_byメソッド...ブロックを評価してから一番重複数の少ないものを調べる
# shiftメソッド...先頭の要素を削除して返り値にする。
# succメソッド ... 文字列の後継の文字列を返す   https://hackmd.io/@zuby/BklVXzZ6w
# collectメソッド...ブロックを評価したものを全て集めた配列を返す。

# mapとcollectの違い   https://magazine.rubyist.net/articles/0038/0038-MapAndCollect.html
# map は「データ構造を保ったまま3、あるルールに従って元のデータ構造を別データ構造に変換する」   全体をまとまりとして捉える
# collect は「データ構造内の全ての要素に対して、ある処理を繰り返し実行し、その結果を集めたもの」   個々の要素を扱う

# capitalizeメソッド...文字列の頭文字だけ大文字で残りを小文字にして返す
# stripメソッド...行頭行末の空白を消す。行間の空白は残す。
# rotateメソッド...配列の中で引数のindex番号が先頭に来るように並び替える。引数がなければ１が指定される。
# clampメソッド...第一引数（最低値）から第二引数（最大値）の範囲内収まらないものを最大値・最小値に変換する。rangeオブジェクトに対しても使える
# rjustメソッド...第一引数の桁になるまで第二引数の文字で埋める。文字はレシーバの左側にくる。
# detectメソッド...ブロックを評価して最初に真になるものを返す
# betweenメソッド...レシーバが第一引数（min）、第二引数(max)の範囲ないにあればtrueを返す。文字列の場合も同じ。
# each_consメソッド...要素を引数の値ごとに区切って繰り返して返す(Enumeratorとして返る)。(1..4).each_cons(2).to_a => [[1, 2], [2, 3], [3, 4]]
# trメソッド...第一引数の文字列を第二引数の文字列に変換する。  ROT13への変更  string.tr("A-Za-z", "N-ZA-Mn-za-m")。引数が文字列だった場合、該当するものだけ変換する。 'abcde'.tr('abcf', '1234') => "123de"
# any?メソッド...すべての要素が偽の場合 false を返す。真の要素があればその時点で true を返す。
# key?メソッド...レシーバに引数が含まれているか確かめる
# values_atメソッド...レシーバに引数（key）が含まれていればvalueに変換する。引数に複数のkeyを設定した場合、返り値は配列になる。
# each_sliceメソッド...要素を引数の値毎に区切る                 (1..10).each_slice(3) {|a| p a}  =>  [1, 2, 3] [4, 5, 6] [7, 8, 9] [10]
# each_consメソッド...要素を１ずつずらしていき引数の値毎に区切る。 (1..10).each_cons(3){|v| p v }  =>  # => [1, 2, 3] [2, 3, 4] [3, 4, 5] [4, 5, 6] [8, 9, 10]

# packできる型一覧  https://docs.ruby-lang.org/ja/latest/method/Array/i/pack.html
# 文字列と整数の相互変換について  https://qiita.com/masakielastic/items/9befff6f05afdcd157f2
# shift-jisについて  https://seiai.ed.jp/sys/text/java/shiftjis_table.html
# packメソッド...配列の内容を template で指定された文字列にしたがって、バイナリとしてパックした文字列を返す。
# unpackメソッド...packメソッドの逆

# cycleメソッド...レシーバの要素を引数の回数繰り返しブロックを呼び出す。引数がなければ無限に続く。
# nextメソッド...レシーバの次の要素を呼び出す。
# swapcaseメソッド...文字列の大文字小文字を入れ替える
# nonzeroメソッド...自身がゼロの時 nil を返し、非ゼロの時 self を返す。
# minmaxメソッド...最小値と最大値を配列として返す %w[1 2 3 4 5].minmax  => ["1", "5"]   %w[a b c d e].minmax  => ["a", "e"]
# end_withメソッド...レシーバの最後が引数で終わっていればtrueを返す。
# quoteメソッド...正規表現の中で特別な意味を持つ文字の直前にエスケープ文字(バックスラッシュ)を挿入した文字列を返す。
# sqrtメソッド...非負整数 n の整数の平方根を返す。小数点以下は切り捨て。Integer.sqrt(24) # => 4  Integer.sqrt(25) # => 5
# bit_lengthメソッド...selfを表すのに必要なビット数を返す。0 や -1 の場合は 0 を返す
# stepメソッド...self からはじめ step を足しながら limit を越える前までブロックを繰り返す    10.step(6, -1){|n| p n} => 10 9 8 7 6
# gcdメソッド... レシーバと引数(整数)の最大公約数を返す。
# downtoメソッド...self から min まで 1 ずつ減らしながらブロックを繰り返し実行する。 3.downto(1) {|i| p i } => 321


# 文字コードの調べ方 https://qiita.com/ima1zumi/items/28ef13f5af3d9afdeaf3
# p "abc".unpack("U*") => [97, 98, 99]   文字列からasciiコードへの変換
# p [97, 98, 99].pack("U") => "a"
# p [97, 98, 99].pack("U*") => "abc"
# p "abc".each_codepoint { |s| p s } => 97 98 99     文字列のコードポイントを調べることができる

# アスキーコードとビット数に関して  https://e-words.jp/w/ASCII.html
# p [*('a'..'z')].map(&:sum)
# p [*('A'..'Z')].map(&:sum)
# p [*('1'..'11')].map(&:sum)
# p 'a'.sum == '10'.sum
# p ['a', 'b', 'c'].map { |x| p x.sum - 96 }.sum
# p ['ab'].map { |x| x.sum - 96 * 2 }.sum
# p ['あ', 'い', 'う', 'ん'].map(&:sum)
# p ['ア', 'イ', 'ウ', 'ン'].map(&:sum)

# 並び替えの順番指定
# sort_byメソッドのブロックに配列を指定すると、配列内の要素の順番で並び替える。 p "ababaaaabbbbbbbaaabba".chars.sort_by { |s| %w(b a).index(s) }


# 正規表現チートシート https://murashun.jp/article/programming/regular-expression.html
# 正規表現チートシート2 https://and-engineer.com/articles/YR4HsBAAAPDr_BhQ

# 記号のエスケープ
# s.gsub(/[\?|\!\+]/, '')

# 最後のマッチを取得する
# input.gsub(/(\d+$)/)

# １文字目と２文字目以降で分割してマッチする。'\2\1'は順番の入れ替え
# text.gsub(/(\w)(\w+)*/, '\2\1')

# _ か - の次の文字をキャプチャして大文字にする。  [_-] _-のいずれか一文字、 .(ドット)は任意の1文字。()でキャプチャ。$1はキャプチャされた対象。
# str.gsub(/[_-](.)/) {"#{$1.upcase}"}

# a-zから始まる文字のみ取得。/iは修飾詞、大文字小文字を区別しない。
# text.gsub(/[^a-z]/, '')

# 文字数を指定して取得する。 \w アルファベット・数字・アンダーバー、 {n,} 最小文字数
# string.gsub(/\w{5,}/, &:reverse)

# 正規表現の \1 について https://docs.ruby-lang.org/ja/latest/method/String/i/sub.html

# Integerの & は bitの論理積
# https://docs.ruby-lang.org/ja/latest/class/Integer.html#I_--26
# https://www.javadrive.jp/ruby/num/index6.html
# 1011  = 11
# 1110  = 14
# ------------
# 1010  = 10

# 比較演算子 3 <=> 5 について
# (n <=> 0) 左が大きければ 1, 等しければ0, 右が大きければ -1 を返す。  https://docs.ruby-lang.org/ja/latest/doc/symref.html#langl
# a = 10
# p (a <=> 0)  => 1   aが0より大きいか評価し、1 0 -1のいずれかを返す。
# b = -10
# p (b <=> 0)  => -1
# c = -10
# p c.abs * 3 * (c <=> 0)  => -30


# 先読み、後読みについて https://docs.ruby-lang.org/ja/latest/doc/spec=2fregexp.html#lookahead_lookbehind
#                    https://qiita.com/kaino5454/items/472238cb8dbeba866a00
# (?=pat) 肯定先読み
# (?<=pat) 肯定後読み
# text = "apple and banana and tomato and lemon tomato"
# p text.scan(/(?<=and )banana/)        # => ["banana"]
# p text.scan(/(?<=and )banana|tomato/) # => ["banana", "tomato"]
# p text.scan(/(?<=and )\w+/)           # => ["banana", "tomato", "lemon"]
# p text.scan(/tomato(?= and)/)         # => ["tomato"]
# p text.scan(/tomato|apple(?= and)/)   # => ["apple", "tomato", "tomato"]
# p text.scan(/(?=and).*(?<=and)/)      # => ["and banana and tomato and"]
# p text.scan(/(?<=and ).+(?= and)/)    # => ["banana and tomato"]
# p text.scan(/(?<=and )\w+(?= and)/)   # => ["banana", "tomato"]