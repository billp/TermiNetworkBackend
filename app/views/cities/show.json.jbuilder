json.id @city.id
json.name @city.name
json.description @city.description
json.country_name @city.country_name
json.image url_for(@city.image) if @city.image.attached?
