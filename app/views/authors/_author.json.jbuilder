json.extract! author, :id, :name, :address, :profile_image, :timestamps, :created_at, :updated_at
json.url author_url(author, format: :json)
