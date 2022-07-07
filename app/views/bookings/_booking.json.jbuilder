json.extract! booking, :id, :book_date, :return_date, :due_amt, :service_amt, :user_id, :car_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
