class ChangeRolloverToStringInSpendigns < ActiveRecord::Migration[5.1]
  def change
      change_column :spendings, :rollover, :string
  end
end
