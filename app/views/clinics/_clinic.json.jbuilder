json.extract! clinic, :id, :clinic_name, :clinic_address, :clinic_phone, :clinic_email, :created_at, :updated_at
json.url clinic_url(clinic, format: :json)
