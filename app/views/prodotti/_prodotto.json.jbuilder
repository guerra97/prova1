json.extract! prodotto, :id, :nome, :prezzo, :descrizione, :created_at, :updated_at
json.url prodotto_url(prodotto, format: :json)
