class AddMantraToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mantra, :string
  end
end
