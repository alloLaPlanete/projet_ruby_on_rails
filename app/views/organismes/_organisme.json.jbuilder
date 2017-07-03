json.extract! organisme, :id, :nom, :adresse, :telephone, :courriel, :created_at, :updated_at
json.url organisme_url(organisme, format: :json)
