json.extract! registro_maestro, :id, :nombre, :cuenta, :area, :created_at, :updated_at
json.url registro_maestro_url(registro_maestro, format: :json)
