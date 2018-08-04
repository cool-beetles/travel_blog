class User < ApplicationRecord
  has_one :account
  has_many :travels
  validates :first_name, length: { minimum: 3 }
  validates :last_name, length: { minimum: 3 }
end
