class ChangeElectricAmountToInteger < ActiveRecord::Migration
  def change
    change_column :electric_bills, :amount, :integer
  end
end
