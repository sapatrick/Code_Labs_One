class User < ApplicationRecord
  has_secure_password
  has_many :reviews, dependent: :destroy

validates :email, presence: true,
                  format: /\A\S+@\S+\z/,
                  uniqueness: { case_sensitive: false }
validates :username, presence: true,
                     format: /\A[A-Z0-9]+\z/i,
                     uniqueness: { case_sensitive: false }
def gravatar_id
  Digest::MD5::hexdigest(email.downcase)
end

def self.authenticate(email, password)
  user = User.find_by(email: email)
  user && user.authenticate(password)
end

end

