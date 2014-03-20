class CreateTimings < ActiveRecord::Migration
  def change
    create_table :timings do |t|
      
      
      t.string :morning_show
      t.string :matinee_show
      t.string :first_show
      t.string :second_show
      t.string :theatre_id

      t.timestamps
    end
  end
end
