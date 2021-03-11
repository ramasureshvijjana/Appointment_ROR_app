json.extract! patient, :id, :name, :age, :problem, :phone, :email, :time_slot, :doctor_id, :created_at, :updated_at
json.url patient_url(patient, :format => :json)
