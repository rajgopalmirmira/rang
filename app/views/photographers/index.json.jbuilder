json.array!(@photographers) do |photographer|
  json.extract! photographer, :id, :name, :fburl, :weburl, :about
  json.url photographer_url(photographer, format: :json)
end
