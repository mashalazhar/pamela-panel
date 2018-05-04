class RemoveCreatedAtFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :created_at, :datetime
  end
end
