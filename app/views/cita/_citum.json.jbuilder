json.extract! citum, :id, :Name, :Apellido, :Edad, :Diagnostico, :Notas, :created_at, :updated_at
json.url citum_url(citum, format: :json)
