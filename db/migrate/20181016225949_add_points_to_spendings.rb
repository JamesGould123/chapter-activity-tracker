class AddPointsToSpendings < ActiveRecord::Migration[5.1]
  def change
    add_column :spendings, :points, :integer
  end
end
