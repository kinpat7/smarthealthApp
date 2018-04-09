json.extract! hospital, :id, :hospital_name, :hospital_address, :hospital_phone, :hospital_email, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
