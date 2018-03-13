class Transaction < ApplicationRecord
	belongs_to :employee
    belongs_to :client
	validates :vehicle, presence: true
end
ns