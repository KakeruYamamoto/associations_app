class Author < ApplicationRecord
  has_many :books#結びつけたいテーブルのモデルを指定。複数のhas_manyと単数のbelongs_to
end#書籍は複数


#アソシエーションで定義されたものがメソッドになる。

# author.books
