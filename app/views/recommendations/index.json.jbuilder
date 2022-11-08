json.array! @recommendations do |recommendation|
  json.id recommendation.id
  json.title recommendation.title
  json.cover_url recommendation.cover_url
  json.category do 
    json.id recommendation.category.id
    json.name recommendation.category.name
  end
end