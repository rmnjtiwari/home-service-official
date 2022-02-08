class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :users, null: false, foreign_key: true
      t.string :feedback
      t.timestamps
    end
  end
end
