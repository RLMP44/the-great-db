class CreateRecLisLists < ActiveRecord::Migration[7.1]
  def change
    create_table :rec_lis_lists do |t|
      t.string :title

      t.timestamps
    end
  end
end
