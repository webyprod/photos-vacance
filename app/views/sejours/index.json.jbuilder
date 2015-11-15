json.array!(@sejours) do |sejour|
  json.extract! sejour, :id, :lieu, :description, :note, :recommandation
  json.url sejour_url(sejour, format: :json)
end
