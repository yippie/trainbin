json.array!(@railroads) do |railroad|
  json.extract! railroad, :id, :name, :notes, :User_id
  json.url railroad_url(railroad, format: :json)
end
