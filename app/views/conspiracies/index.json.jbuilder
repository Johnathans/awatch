json.array!(@conspiracies) do |conspiracy|
  json.extract! conspiracy, :id, :title, :body, :image
  json.url conspiracy_url(conspiracy, format: :json)
end
