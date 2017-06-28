json.extract! usager, :id, :courriel, :nom, :motPasse, :role, :created_at, :updated_at
json.url usager_url(usager, format: :json)