class User < ApplicationRecord
  has_secure_password
  has_many :activity
  has_and_belongs_to_many :interest

end
