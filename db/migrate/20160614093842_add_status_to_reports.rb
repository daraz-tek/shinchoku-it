class AddStatusToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :status, :integer, default: 0, null: false, limit: 1, after: :content
  end
end
