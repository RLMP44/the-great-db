class CreateRecLisRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :rec_lis_recipes do |t|
      t.string :title
      t.string :overview
      t.string :picture_url
      t.float :rating

      t.timestamps
    end
  end
end
