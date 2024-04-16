class CreateWatLisMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :wat_lis_movies do |t|
      t.string :title
      t.string :overview
      t.string :poster_url
      t.float :rating

      t.timestamps
    end
  end
end
