json.extract! registration, :id, :users_id, :events_id, :team_name, :created_at, :updated_at
json.url registration_url(registration, format: :json)
