class Blog < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy#dependent::destroyはブログが削除されると同時にお気に入り情報も同じ処理を行う
  #Userのhas_many :favoritesと意味が違う。ここでは任意のBlogインスタンスのidと、Favoritesテーブルにあるのblog_idの数字が一致しているものを全て取り出す
  #Userに書いてあるhas_many :favoritesは、任意のUserインスタンスのidと、Favoritesテーブルにあるのuser_idの数字が一致しているものを全て取り出す
  has_many :favorite_users, through: :favorites, source: :user
  #上のhas_manyから始まるコードを定義することでfavorite_users というメソッドにより、 blogのidと一致するblog_idを持つfavoritesテーブルのレコードを全て取り出します。
  #その上で、そのfavoritesテーブルのレコードがもっているuser_idの数字と同じidを持つuserを全件取得できるようになります。
  #この時、through: :favoritesで「favoritesを通過して」、source: :userで「userの情報を取得する」という意味合いになる

  #validates:titleを設定することでtitleにバリデーションを設定。そしてpresence:tureで空の登録を禁止する。
    validates :title, presence: true #presenceは他にも種類がある下記参照 presenceは空でないことがture  テキストでは空だと保存を止めたいのでpresence
    ##validates :contet,presence: true  <= エラーがでる
    # validates :content, length:{minimum:1} #一文字以上
    # validates :content, length:{maximum:75} #75文字以下
    ##validates :content,length: { in: 1..140 }   #1文字以上140以下
    #validates :content, length{is:8} #8文字のみ

    #validates :login, absence: true #空であることがture
    #validates :user_name, uniqueness: true #ユニークであること（同じものが２つあってはいけない存在）
end
