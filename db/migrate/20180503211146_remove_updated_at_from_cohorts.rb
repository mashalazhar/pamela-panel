class RemoveUpdatedAtFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :updated_at, :datetime
  end
end
