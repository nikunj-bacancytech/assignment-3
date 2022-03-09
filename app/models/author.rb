class Author < ApplicationRecord
    has_one_attached :profile_image
    has_many :books, dependent: :destroy
    
    validates :name, presence: true
    validates :profile_image, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..3.megabytes }
end
