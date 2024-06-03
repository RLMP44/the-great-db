class AddDetailsToRecLisLists < ActiveRecord::Migration[7.1]
  def change
    add_reference :rec_lis_lists, :rec_lis_user, null: false, foreign_key: true
    add_column :rec_lis_lists, :comment, :string
  end
end
