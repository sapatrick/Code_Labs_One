class AddMoreFieldsToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :image_file_name, :string
  end
end
