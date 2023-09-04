class Post < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  has_one_attached :thumbnail
  has_many :likes, dependent: :destroy
end
