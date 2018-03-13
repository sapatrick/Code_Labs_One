class FixClients < ActiveRecord::Migration[5.1]
  def up
  	Client.delete_all
  end
end
