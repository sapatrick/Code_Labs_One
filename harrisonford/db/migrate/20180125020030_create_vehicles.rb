class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :year
      t.string :make
      t.string :model
      t.string :type
      t.string :condition
      t.decimal :mileage
      t.integer :count
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
