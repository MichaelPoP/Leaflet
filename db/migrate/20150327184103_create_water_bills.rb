class CreateWaterBills < ActiveRecord::Migration
  def change
    create_table :water_bills do |t|
      t.decimal :amount
      t.integer :month
      t.integer :year
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
