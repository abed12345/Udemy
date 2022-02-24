json.extract! post, :id, :Title, :summary, :body, :active, :created_at, :updated_at
json.url post_url(post, format: :json)
