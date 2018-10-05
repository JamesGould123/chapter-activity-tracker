class CreateChapterActions < ActiveRecord::Migration[5.1]
  def change
    create_table :chapter_actions do |t|
      t.references :user, foreign_key: true
      t.integer :points
      t.text :note

      t.timestamps
    end
  end
end
