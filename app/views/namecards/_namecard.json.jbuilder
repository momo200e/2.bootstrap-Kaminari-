json.extract! namecard, :id, :name, :tel, :address, :company, :created_at, :updated_at
json.url namecard_url(namecard, format: :json)
