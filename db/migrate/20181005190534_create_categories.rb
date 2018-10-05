class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :desc
      t.integer :default_points

      t.timestamps
    end
  end
end
