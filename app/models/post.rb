class Post < ApplicationRecord
  
  has_one_attached :image, :title, :content, presence: true
end
