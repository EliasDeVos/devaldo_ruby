json.extract! meeting, :id, :name, :start_time, :location, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
