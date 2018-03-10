class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :cfirstname
      t.string :clastname
      t.string :cemailaddress
      t.string :caddress_line_one
      t.string :caddress_line_two
      t.string :caddress_line_three

      t.timestamps
    end
  end
end
