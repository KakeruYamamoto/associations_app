class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :email

      t.timestamps
    end
  end
end


#$ rails g model User name:string email:text  modelは単数  テーブルは複数になる。
