class AddMovieIdToCelebrities < ActiveRecord::Migration
  def change
    add_column :celebrities, :movie_id, :integer
  end
end
