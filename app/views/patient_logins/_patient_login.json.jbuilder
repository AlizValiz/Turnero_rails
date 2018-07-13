json.extract! patient_login, :id, :Nombre, :Apellidos, :Fecha, :sexo, :Especialidad, :created_at, :updated_at
json.url patient_login_url(patient_login, format: :json)
