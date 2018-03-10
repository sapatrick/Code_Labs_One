class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :date_completed

      t.timestamps
    end
  end
end
