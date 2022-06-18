json.array! @movies do |movie|
  json.extract! movie, :photo, :title, :creation_date
end