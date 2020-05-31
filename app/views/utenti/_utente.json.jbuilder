json.extract! utente, :id, :nome, :email, :created_at, :updated_at
json.url utente_url(utente, format: :json)
