class Transaction < ApplicationRecord
  belongs_to :employee
  belongs_to :customer
end
