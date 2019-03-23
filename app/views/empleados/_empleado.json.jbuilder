json.extract! empleado, :id, :cargo, :turno, :sexo, :salario, :personas_id, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
