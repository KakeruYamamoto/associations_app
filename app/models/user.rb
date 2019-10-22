class User < ApplicationRecord
  has_many :blogs
  has_many :favorites, dependent: :destroy# favorites というメソッドにより、Blogと一対多で紐づいているFavoriteモデルのレコードを全件取得できるようになる
  #Userのhas_many :favoritesと意味が違う。ここでは任意のBlogインスタンスのidと、Favoritesテーブルにあるのblog_idの数字が一致しているものを全て取り出す
  #Userに書いてあるhas_many :favoritesは、任意のUserインスタンスのidと、Favoritesテーブルにあるのuser_idの数字が一致しているものを全て取り出す
end
