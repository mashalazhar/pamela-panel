class RemoveCreatedAtFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :created_at, :datetime
  end
end
