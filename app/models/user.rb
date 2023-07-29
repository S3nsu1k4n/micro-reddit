class User < ApplicationRecord
  has_many :posts

  validates :name, :password, presence: true
  validates :name, :password, length: { in: 3..16 }
  validates :name, uniqueness: true
end
