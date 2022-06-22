json.array! @characters do |character|
  json.extract! character, :name, :photo
end
