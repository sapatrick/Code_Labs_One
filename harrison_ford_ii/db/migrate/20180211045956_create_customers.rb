class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :address_line_one
      t.string :address_line_two
      t.string :address_line_three
      t.references :vehicle, foreign_key: true
      t.text :original_agreement
      t.integer :monthly_payment
      t.integer :months_left
      t.string :status

      t.timestamps
    end
  end
end
