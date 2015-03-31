class ChangeWaterAmountToInteger < ActiveRecord::Migration
  def change
    change_column :water_bills, :amount, :integer
  end
end
