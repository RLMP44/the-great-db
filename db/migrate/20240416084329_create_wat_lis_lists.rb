class CreateWatLisLists < ActiveRecord::Migration[7.1]
  def change
    create_table :wat_lis_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
