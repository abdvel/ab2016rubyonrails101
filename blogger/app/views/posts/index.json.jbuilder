json.array!(@posts) do |post|
  json.extract! post, :id, :title, :instructions
  json.url post_url(post, format: :json)
end
