class RemoveCreatedAtFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :created_at, :datetime
  end
end
