json.array!(@cars) do |car|
  json.extract! car, :id, :modelnumber, :notes, :scale, :cartype, :quantity, :User_id, :Manufacturer_id, :Railroad_id
  json.url car_url(car, format: :json)
end
