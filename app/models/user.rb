class User < ApplicationRecord
  validates :userID, uniqueness: true
  validates :email, uniqueness: true
end
