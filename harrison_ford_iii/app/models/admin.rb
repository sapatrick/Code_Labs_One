class Admin < ApplicationRecord
  has_secure_password
  #This is broken and I haven't had time to fix it yet :(

  validates :name, presence: true
  validates :email, presence: true,
                  format: /\A\S+@\S+\z/,
                  uniqueness: { case_sensitive: false }

  def self.authenticate(email, password)
    admin = Admin.find_by(email: email)
    admin && Admin.authenticate(password)
  end

end


