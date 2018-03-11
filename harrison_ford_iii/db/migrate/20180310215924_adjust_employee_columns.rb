class AdjustEmployeeColumns < ActiveRecord::Migration[5.1]
  def up
  	remove_column :employees, :hire_date, :string
  	add_column :employees, :hire_date, :date
  end

  def down
  	remove_column :employees, :hire_date, :date  	
  	add_column :employees, :hire_date, :string
  end
end
