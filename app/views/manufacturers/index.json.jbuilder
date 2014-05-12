json.array!(@manufacturers) do |manufacturer|
  json.extract! manufacturer, :id, :name, :control, :track, :trains, :user_id
  json.url manufacturer_url(manufacturer, format: :json)
end
