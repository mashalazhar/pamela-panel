class RemoveUpdatedAtFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :updated_at, :datetime
  end
end
