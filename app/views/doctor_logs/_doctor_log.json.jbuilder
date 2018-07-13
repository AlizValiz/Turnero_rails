json.extract! doctor_log, :id, :Name, :Especialidad, :created_at, :updated_at
json.url doctor_log_url(doctor_log, format: :json)
