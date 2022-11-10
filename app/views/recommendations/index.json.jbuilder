json.array! @recommendations do |recommendation|
  json.id recommendation.id
  json.title recommendation.title
  json.cover_url recommendation.cover_url
  json.user recommendation.user.name
  json.category recommendation.category.name
end