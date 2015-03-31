class ChangeGasAmountToInteger < ActiveRecord::Migration
  def change
    change_column :gas_bills, :amount, :integer
  end
end
