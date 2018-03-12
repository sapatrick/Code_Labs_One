class AddColumnsToTransactions < ActiveRecord::Migration[5.1]
 def up
  	add_column :transactions, :date_completed, :date
  	add_column :transactions, :client_name, :string
  	add_column :transactions, :vehicle, :string
 end

  def down
  	remove_column :transactions, :date_completed, :date 	
  	remove_column :transactions, :client_name, :string 
  	remove_column :transactions, :vehicle, :string
  end
end
