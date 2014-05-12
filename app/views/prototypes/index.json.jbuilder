json.array!(@prototypes) do |prototype|
  json.extract! prototype, :id, :name, :notes, :eninetype, :manufacturer, :model, :User_id
  json.url prototype_url(prototype, format: :json)
end
