class AddDetailsToRecLisRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :rec_lis_recipes, :name, :string
    add_column :rec_lis_recipes, :description, :string
    add_column :rec_lis_recipes, :comment, :string
    add_reference :rec_lis_recipes, :rec_lis_user, null: false, foreign_key: true
  end
end
