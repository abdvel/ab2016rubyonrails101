json.array!(@article1s) do |article1|
  json.extract! article1, :id, :title, :text
  json.url article1_url(article1, format: :json)
end
