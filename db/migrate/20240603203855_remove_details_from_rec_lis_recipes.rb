class RemoveDetailsFromRecLisRecipes < ActiveRecord::Migration[7.1]
  def change
    remove_column :rec_lis_recipes, :overview, :string
    remove_column :rec_lis_recipes, :picture_url, :string
  end
end
