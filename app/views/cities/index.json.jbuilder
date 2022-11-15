json.array! @cities do |city|
  json.id city.id
  json.name city.name
  json.country_name city.country_name
  json.thumb url_for(city.thumb) if city.image.attached?
end