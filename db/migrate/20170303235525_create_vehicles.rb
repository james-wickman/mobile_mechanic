class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.references :user, foreign_key: true
      t.string :type
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
