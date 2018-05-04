class RemoveUpdatedAtFromInstructors < ActiveRecord::Migration[5.2]
  def change
    remove_column :instructors, :updated_at, :datetime
  end
end
