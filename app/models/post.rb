class Post < ApplicationRecord
  
  validates :description, presence: true
  has_one_attached :thumbnail
end
