class RemoveCreatedAtFromCohortStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohort_students, :created_at, :datetime
  end
end
