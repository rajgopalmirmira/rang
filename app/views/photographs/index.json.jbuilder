json.array!(@photographs) do |photograph|
  json.extract! photograph, :id, :photoid, :photourl, :photographer
  json.url photograph_url(photograph, format: :json)
end
