json.extract! patient, :id, :patient_name, :dob, :address, :phone_no, :special_observation, :created_at, :updated_at
json.url patient_url(patient, format: :json)
