class AddTotalHoursToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :total_hours, :integer
  end
end
