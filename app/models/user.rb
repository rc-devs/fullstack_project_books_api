class User < ApplicationRecord
  has_secure_password # for password hash and stuff

  # validations
    validates :username, presence: true, uniqueness: :true

  # associations
   has_many :books
end
