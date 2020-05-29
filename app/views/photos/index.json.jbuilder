json.array! @photos do |photo|
  json.id photo.id
  json.image photo.image
  json.text photo.text
  json.user_id photo.user_id
end