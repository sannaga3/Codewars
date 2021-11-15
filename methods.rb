# zipメソッド...２つの配列の要素数が同じ場合、同じindex番号の要素を組み合わせて配列を生成する
# to_iメソッド...引数をn進数として文字列から変換する
# digitsメソッド...各桁を数値のまま配列に格納する
# sort_byメソッドで、ブロックで評価してから並び替える
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
# trメソッド...第一引数の文字列を第二引数の文字列に変換する。  ROT13への変更  string.tr("A-Za-z", "N-ZA-Mn-za-m")
# any?メソッド...すべての要素が偽の場合 false を返す。真の要素があればその時点で true を返す。


# 正規表現チートシート https://murashun.jp/article/programming/regular-expression.html

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
