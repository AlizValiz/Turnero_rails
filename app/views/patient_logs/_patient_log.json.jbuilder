json.extract! patient_log, :id, :Nombre, :Apellido, :Fecha_Nac, :Sexo, :Especialidad, :created_at, :updated_at
json.url patient_log_url(patient_log, format: :json)
