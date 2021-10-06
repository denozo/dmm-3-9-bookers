class Book < ApplicationRecord
  validates :title, presence: true #データが存在しないといけないという記述
  valedates :body, presence: true
end
