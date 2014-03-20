class AddColumnToTiming < ActiveRecord::Migration
  def change
    add_column :timings, :theatre_name, :string
  end
end
