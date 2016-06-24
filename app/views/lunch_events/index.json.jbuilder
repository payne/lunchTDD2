json.array!(@lunch_events) do |lunch_event|
  json.extract! lunch_event, :id, :lunchtime, :group_id
  json.url lunch_event_url(lunch_event, format: :json)
end
