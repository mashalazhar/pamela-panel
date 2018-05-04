class RemoveUpdatedAtFromCohortStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohort_students, :updated_at, :datetime
  end
end
