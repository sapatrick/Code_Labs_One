class FixColumnNameEmployees < ActiveRecord::Migration[5.1]
  def change
  	change_table :employees do |t|
  	  t.rename :last_name, :lastname
  	  t.rename :first_name, :firstname
    end
  end
end
