json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :is_checked_in, :user_id, :venue_id
  json.url checkin_url(checkin, format: :json)
end
