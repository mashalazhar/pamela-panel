class RemoveCreatedAtFromInstructors < ActiveRecord::Migration[5.2]
  def change
    remove_column :instructors, :created_at, :datetime
  end
end
