class FixClientOnetoMany < ActiveRecord::Migration[5.1]
  def up
  	remove_column :clients, :employee
  end

  def down
  	add_column :clients, :employee_id, references: :employee
  end
end
