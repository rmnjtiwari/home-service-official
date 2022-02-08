class CreateProfessionals < ActiveRecord::Migration[6.1]
  def change
    create_table :professionals do |t|
      t.references :users, null: false, foreign_key: true
      t.string :service_name
      t.string :cost_of_service
      t.string :rating
      t.timestamps
    end
  end
end
