class AddCommentToRecLisBookmarks < ActiveRecord::Migration[7.1]
  def change
    add_column :rec_lis_bookmarks, :comment, :string
  end
end
