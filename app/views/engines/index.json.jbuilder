json.array!(@engines) do |engine|
  json.extract! engine, :id, :modelnumber, :notes, :scale, :enginetype, :roadnumber, :own, :User_id, :Manufacturer_id, :Prototype_id, :Railroad_id
  json.url engine_url(engine, format: :json)
end
