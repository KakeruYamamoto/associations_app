class AddAuthorRefToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :author, foreign_key: true
  end
end



# $ rails g migration AddAuthorRefToBooks author:references
