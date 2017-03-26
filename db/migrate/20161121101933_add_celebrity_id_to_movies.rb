class AddCelebrityIdToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :celebrity_id, :integer
  end
end
