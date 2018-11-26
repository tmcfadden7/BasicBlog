class AddDetailsToComments < ActiveRecord::Migration[5.2]
  def up
    add_column :comments, :commenter, :string, :limit => 20
    add_column :comments, :body, :text
    add_column :comments, :post_id, :integer
    add_column :comments, :user_id, :integer

  end

  def down
    drop_table :comments
  end
end
