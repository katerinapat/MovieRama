json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :description, :likes, :hates
  json.url movie_url(movie, format: :json)
end
