class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content   #foreign_keyは外部キーを指定
      t.references :user, foreign_key: true #referencesを使うと自動的に外部キーが指定されて、同じようにインデックスが設定される。

      t.timestamps
    end
  end
end
