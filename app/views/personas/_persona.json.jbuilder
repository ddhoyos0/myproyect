json.extract! persona, :id, :tipo_documento, :identificacion, :nombre, :direccion, :telefono, :celular, :correo, :fecha_nacimiento, :created_at, :updated_at
json.url persona_url(persona, format: :json)
