json.array! @photos do |photo|
  json.id photo.id
  json.user_id photo.user_id
  json.image photo.image
  json.text photo.text
end