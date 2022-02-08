class AddGenderToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users,:gender,:integer
    add_column :users,:role,:integer
  end
end
