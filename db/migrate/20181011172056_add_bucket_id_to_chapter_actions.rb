class AddBucketIdToChapterActions < ActiveRecord::Migration[5.1]
  def change
    add_column :chapter_actions, :bucket_id, :integer
  end
end
