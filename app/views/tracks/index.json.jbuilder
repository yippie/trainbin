json.array!(@tracks) do |track|
  json.extract! track, :id, :partnumber, :notes, :scale, :tracktype, :quantity, :User_id, :Manufacturer_id
  json.url track_url(track, format: :json)
end
