class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
	  t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :address
      t.references :employee, foreign_key: true
      t.date :date_created
      
      t.timestamps
    end
  end
end
