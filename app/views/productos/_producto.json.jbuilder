json.extract! producto, :id, :codigo_producto, :nombre, :unidad, :valor_unitario, :cantidad, :marca_id, :created_at, :updated_at
json.url producto_url(producto, format: :json)
