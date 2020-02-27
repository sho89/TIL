#Rubyとは
全てがオブジェクトで数字でも文字でも真偽値でもメソッドを呼び出せる

改行を行うことで分の区切りと見なされる
1.to_s #=> "1"

セミコロンを使うことで、分の区切りを指定できる。
1.to_s; nil.to_s 10.to_s(16)

変数名は基本的にスネークケースを使うのが慣習とされていて、キャメルケースはレア
special_price = 100 #これが一般的

special_Price = 100 #キャメルケースは利用しない

メソッドの引数は省略できる

配列に初期値を設定する場合には注意が必要

a = Array.new(5, 'default')
a = ["default","default","default","default","default"]

str = a[0]
str => "default"
str.upcase!
str => "DEFAULT"
a = ["DEFAULT","DEFAULT","DEFAULT","DEFAULT","DEFAULT"]


全て大文字になってしまうのは、配列の全要素が同じ文字オブジェクトを参照しているから。
この場合はブロックで初期値を渡すようにする。
a = Array.new(5) { 'default'}
a => ["default","default","default","default","default"]

str = a[0]
str => "default"
str.upcase!
str => "DEFAULT"

a => ["DEFAULT","default","default","default","default"]

ブロックの場合はブロックが呼ばれるたびに文字列のdefaultが新しく生成される