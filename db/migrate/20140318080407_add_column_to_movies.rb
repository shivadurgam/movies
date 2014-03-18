class AddColumnToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :theatre_id, :string
  end
end
