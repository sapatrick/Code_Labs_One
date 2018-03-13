class Client < ApplicationRecord
   validates :first_name, :last_name, :email_address, :address, presence: true
    has_many :transactions, dependent: :destroy


end
