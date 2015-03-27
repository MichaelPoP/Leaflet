class CreateGasBills < ActiveRecord::Migration
  def change
    create_table :gas_bills do |t|
      t.decimal :amount
      t.integer :month
      t.integer :year
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
