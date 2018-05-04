class RemoveStudentIdFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :student_id, :integer
  end
end
