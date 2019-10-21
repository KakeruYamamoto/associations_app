class Book < ApplicationRecord
  belongs_to :author#結びつけたいテーブルのモデルを指定。複数のhas_manyと単数のbelongs_to
end #著者は一人
