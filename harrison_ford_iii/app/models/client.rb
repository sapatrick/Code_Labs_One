class Client < ApplicationRecord
   validates :first_name, :last_name, :email_address, :address, presence: true

	belongs_to :employee

end
