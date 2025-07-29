class User < ApplicationRecord
  has_secure_password # for password hash and stuff

  # validations
    validates :username, presence: true, uniqueness: :true, length: { in: 5..15 }
    validates :password, length: { minimum: 8 } 
  # associations
   has_many :books
end
