json.id @recommendation.id
json.title @recommendation.title
json.cover_url @recommendation.cover_url

json.user do 
  json.id @recommendation.user.id
  json.name @recommendation.user.name
end

json.category do 
  json.id @recommendation.category.id
  json.name @recommendation.category.name
end

json.comments @recommendation.comments do |comment|
  json.content comment.content
  json.created_at comment.created_at
  json.user comment.user.name
end