# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

paris = City.create(name: "Paris",
                    country_name: "France",
                    description: "Paris is the capital and most populous city of France, with a population of 2,148,271 residents (official estimate, 1 January 2020) in an area of 105 square kilometres (41 square miles).[1] Since the 17th century, Paris has been one of Europe's major centres of finance, diplomacy, commerce, fashion, science and arts. The City of Paris is the centre and seat of government of the Île-de-France, or Paris Region, which has an estimated official 2020 population of 12,278,210, or about 18 percent of the population of France. The Paris Region had a GDP of €709 billion ($808 billion) in 2017. According to the Economist Intelligence Unit Worldwide Cost of Living Survey in 2018, Paris was the second most expensive city in the world, after Singapore, and ahead of Zürich, Hong Kong, Oslo and Geneva.[4] Another source ranked Paris as most expensive, on a par with Singapore and Hong Kong, in 2018.")
paris.image.attach(
  io: File.open(Rails.root.join('db', 'seeds', 'images', 'paris.jpg')),
  filename: 'paris.jpg'
)
#--
athens = City.create(name: "Athens",
                     country_name: "Greece",
                     description: "Athens is the historical capital of Europe, with a long history, dating from the first settlement in the Neolithic age. In the 5th Century BC (the “Golden Age of Pericles”) – the culmination of Athens’ long, fascinating history – the city’s values and civilization acquired a universal significance. Over the years, a multitude of conquerors occupied Athens, and erected unique, splendid monuments - a rare historical palimpsest. In 1834, it became the capital of the modern Greek state and in two centuries since it has become an attractive modern metropolis with unrivalled charm.")
athens.image.attach(
 io: File.open(Rails.root.join('db', 'seeds', 'images', 'athens.jpeg')),
 filename: 'athens.jpg'
)
#--
yokohama = City.create(name: "Yokohama",
                        country_name: "Japan",
                        description: "Yokohama, city and port, capital of Kanagawa ken (prefecture), east-central Honshu, Japan. The second most populous city in the country, it is a major component of the Tokyo-Yokohama metropolitan area, the largest urban agglomeration in Japan.")
yokohama.image.attach(
  io: File.open(Rails.root.join('db', 'seeds', 'images', 'yokohama.jpeg')),
  filename: 'yokohama.jpg'
)
#--
cairo = City.create(name: "Cairo",
                    country_name: "Egypt",
                    description: "Cairo, Arabic Al-Qāhirah (“The Victorious”), city, capital of Egypt, and one of the largest cities in Africa. Cairo has stood for more than 1,000 years on the same site on the banks of the Nile, primarily on the eastern shore, some 500 miles (800 km) downstream from the Aswān High Dam. Located in the northeast of the country, Cairo is the gateway to the Nile delta, where the lower Nile separates into the Rosetta and Damietta branches. Metropolitan Cairo is made up of the Cairo muḥāfazah (governorate), as well as other districts, some of which belong to neighbouring governorates such as Al-Jīzah and Qalūbiyyah. Area governorate, 83 square miles (214 square km). Pop. (2006) governorate, 7,786,640; (2005 est.) urban agglom., 11,128,000..")
cairo.image.attach(
  io: File.open(Rails.root.join('db', 'seeds', 'images', 'cairo.jpeg')),
  filename: 'cairo.jpeg'
)
