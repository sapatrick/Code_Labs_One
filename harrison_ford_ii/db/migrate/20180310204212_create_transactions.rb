class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :date
      t.references :employee, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
