class RemoveCreatedAtFromAdmins < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :created_at, :datetime
  end
end
