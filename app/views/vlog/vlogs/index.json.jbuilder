json.result 200
json.data @vlogs do |vlog|
  json.content vlog.content
  json.picture vlog.picture
end