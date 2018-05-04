class RemoveUpdatedAtFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :updated_at, :datetime
  end
end
