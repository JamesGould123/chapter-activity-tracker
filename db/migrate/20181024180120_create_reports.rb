class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :chapter_universe
      t.string :task_universe
      t.string :time_window

      t.timestamps
    end
  end
end
