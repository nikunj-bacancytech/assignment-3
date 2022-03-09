class Book < ApplicationRecord
  has_one_attached :cover_image
  belongs_to :author

  validates :name, presence: true
  validates :cover_image, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..3.megabytes }
end
