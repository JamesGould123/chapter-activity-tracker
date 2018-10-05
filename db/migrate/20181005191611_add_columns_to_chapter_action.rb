class AddColumnsToChapterAction < ActiveRecord::Migration[5.1]
  def change
    add_column :chapter_actions, :category_id, :string
  end
end
