class RemoveUpdatedAtFromAdmins < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :updated_at, :datetime
  end
end
