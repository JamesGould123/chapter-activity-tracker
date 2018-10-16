class AddDescriptionToSpendings < ActiveRecord::Migration[5.1]
  def change
    add_column :spendings, :desc, :text
  end
end
