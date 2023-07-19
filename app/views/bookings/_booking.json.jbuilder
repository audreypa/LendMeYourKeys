json.extract! booking, :id, :user_id, :car_id, :starts_at, :ends_at, :accepted, :created_at, :updated_at
json.url booking_url(booking, format: :json)
