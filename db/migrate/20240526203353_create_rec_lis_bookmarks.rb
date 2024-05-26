class CreateRecLisBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :rec_lis_bookmarks do |t|
      t.references :rec_lis_list, null: false, foreign_key: true
      t.references :rec_lis_recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
