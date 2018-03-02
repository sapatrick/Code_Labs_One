class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :vehicles, :type, :variety
  end
end
