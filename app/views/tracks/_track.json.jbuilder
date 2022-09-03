json.extract! track, :id, :song, :artist, :created_at, :updated_at
json.url track_url(track, format: :json)
