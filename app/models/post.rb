class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: {maximum: 100}
  validates :body, presence: true, length: {maximum: 1000}

  belongs_to :user
  has_many :comments
end
