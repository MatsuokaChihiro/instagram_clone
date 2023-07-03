class Post < ApplicationRecord
  t.references :target, foreign_key: { to_table: :users }
end
