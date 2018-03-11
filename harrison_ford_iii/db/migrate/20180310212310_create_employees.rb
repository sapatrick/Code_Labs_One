class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :hire_date
      t.boolean :active
      t.string :employee_image_file
      t.string :sales_team
      t.integer :sales_to_date
      t.integer :sales_last_thirty_days

      t.timestamps
    end
  end
end
