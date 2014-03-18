class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :theatre_name
      t.string :place
      t.string :time
      t.string :movie_id

      t.timestamps
    end
  end
end
