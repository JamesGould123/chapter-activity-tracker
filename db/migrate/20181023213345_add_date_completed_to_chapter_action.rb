class AddDateCompletedToChapterAction < ActiveRecord::Migration[5.1]
  def change
    add_column :chapter_actions, :date_completed, :datetime
  end
end
