json.array!(@songs) do |song|
  json.extract! song, :id, :artist, :title, :genre, :lyrics, :user_id
  json.url song_url(song, format: :json)
end
