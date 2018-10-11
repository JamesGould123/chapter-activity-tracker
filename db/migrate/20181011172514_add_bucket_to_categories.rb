class AddBucketToCategories < ActiveRecord::Migration[5.1]
  def change
    add_reference :categories, :bucket, foreign_key: true
  end
end
