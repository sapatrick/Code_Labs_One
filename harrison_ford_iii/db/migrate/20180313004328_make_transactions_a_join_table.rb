class MakeTransactionsAJoinTable < ActiveRecord::Migration[5.1]
  def up
  	Transaction.delete_all
    remove_column :transactions, :client_name
    add_column    :transactions, :client_id, :integer
  end

  def down
    Transaction.delete_all
    remove_column :transactions, :client_id
    add_column    :transactions, :client_name,  :string
  end
end
