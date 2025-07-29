class User < ApplicationRecord
  has_secure_password # for password hash and stuff

  # validations
    validates :username, presence: true, uniqueness: :true
    validates :password, length: { in: 5..15 }

  # associations
   has_many :books
end
