class Post < ApplicationRecord
  t.references :target, foreign_key: { to_table: :users }
  has_one_attached :image
end
