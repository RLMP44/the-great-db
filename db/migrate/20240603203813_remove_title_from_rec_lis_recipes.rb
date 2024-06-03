class RemoveTitleFromRecLisRecipes < ActiveRecord::Migration[7.1]
  def change
    remove_column :rec_lis_recipes, :title, :string
  end
end
