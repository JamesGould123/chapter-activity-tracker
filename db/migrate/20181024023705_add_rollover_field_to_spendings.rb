class AddRolloverFieldToSpendings < ActiveRecord::Migration[5.1]
  def change
    add_column :spendings, :rollover, :boolean
  end
end
