json.extract! celebrity, :id, :name, :twiiter_link, :age, :created_at, :updated_at
json.url celebrity_url(celebrity, format: :json)