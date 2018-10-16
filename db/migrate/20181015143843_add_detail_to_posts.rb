class AddDetailToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :genre, :string
    add_column :posts, :rating, :integer
  end
end
