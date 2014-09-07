json.array!(@things) do |thing|
  json.extract! thing, :id, :title, :description
  json.url thing_url(thing, format: :json)
end
