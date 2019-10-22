class AddAuthorRefToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :author, foreign_key: true
  end##アソシエーションを実装するためには、外部キーを片方のテーブルに設定する必要がある。
end



# $ rails g migration AddAuthorRefToBooks author:references
