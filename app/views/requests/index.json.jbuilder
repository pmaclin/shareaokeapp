json.array!(@requests) do |request|
  json.extract! request, :id, :available, :user_id, :song_id, :venue_id
  json.url request_url(request, format: :json)
end
