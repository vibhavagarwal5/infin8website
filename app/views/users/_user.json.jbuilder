json.extract! user, :id, :name, :contact, :college, :admin, :uid, :created_at, :updated_at
json.url user_url(user, format: :json)
