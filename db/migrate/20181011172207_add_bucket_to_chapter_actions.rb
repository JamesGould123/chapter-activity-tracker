class AddBucketToChapterActions < ActiveRecord::Migration[5.1]
  def change
    add_reference :chapter_actions, :bucket, foreign_key: true
  end
end
