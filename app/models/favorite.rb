class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :blog#定義されたアソシエーションはそのままメソッドになる。
end





# DBやSQLの仕様上、多：多を表現するのは不可能である。
# 中間テーブルを真ん中に置いて、１：多を２つ作ることで多：多を表現する必要がある。
# 多：多の時にはthroughオプションとsourceオプションをセットで使うことが多い。 blogモデル参照
