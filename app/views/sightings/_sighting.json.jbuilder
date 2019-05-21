json.extract! sighting, :id, :plausibility, :incident_occurrence, :incident_location, :witness_gibberish, :blood_alcohol_level, :responding_police_department_location, :incident_long, :incident_lat, :created_at, :updated_at
json.url sighting_url(sighting, format: :json)
