class Author < ApplicationRecord
  has_many :books#結びつけたいテーブルのモデルを指定。複数のhas_manyと単数のbelongs_to
end#書籍は複数


#アソシエーションで定義されたものがメソッドになる。

# author.books

#association(協会)とは二つのモデル間の関連付けのこと。
#アソシエーションを実装するためには、外部キーを片方のテーブルに設定する必要がある。DB/migrate参照
