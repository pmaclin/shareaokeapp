json.array!(@performances) do |performance|
  json.extract! performance, :id, :rating, :comment, :completed, :user_id, :song_id, :venue_id
  json.url performance_url(performance, format: :json)
end
