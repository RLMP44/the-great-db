class CreateWatLisBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :wat_lis_bookmarks do |t|
      t.string :comment
      t.references :wat_lis_movie, null: false, foreign_key: true
      t.references :wat_lis_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
