class Employee < ApplicationRecord
	has_many :transactions, dependent: :destroy
end
