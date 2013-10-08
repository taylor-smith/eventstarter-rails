json.array!(@events) do |event|
  json.extract! event, :location, :time, :deadline, :min_number, :max_number, :event_name, :event_desc
  json.url event_url(event, format: :json)
end
