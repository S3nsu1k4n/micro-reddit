class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, :body, presence: true
  validates :title, length: { in: 3..16 }
  validates :body, length: { minimum: 10 }
  validates :title, uniqueness: true
end
