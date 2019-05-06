json.extract! impuesto, :id, :nombre, :valor, :estado, :created_at, :updated_at
json.url impuesto_url(impuesto, format: :json)
