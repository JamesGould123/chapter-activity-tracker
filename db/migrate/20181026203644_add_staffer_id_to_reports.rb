class AddStafferIdToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :staffer_id, :int
  end
end
