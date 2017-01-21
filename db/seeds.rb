# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pois = PointOfInterest.create([{
      "name": "Camp 4 Wine Café",
          "description": "Wine bar serving panini, charcuterie, cheese & beer in a spare-looking space with outdoor seating",
              "latitude": " 37.645678",
                  "longitude": "-121.005717",
                      "location": "1508 10th St"

}, {
      "name": "Raw Sushi Bistro",
          "description": "Contemporary Japanese locale with a warm atmosphere for sushi, kitchen entrees & cocktails.",
              "latitude": "37.641328",
                  "longitude": "-120.996705",
                      "location": "1200 I St"

}, {
      "name": "Galletto Ristorante",
          "description": "Seasonal Northern Italian cuisine & an extensive wine list served in a white-linen environment.",
              "latitude": "37.641558",
                  "longitude": "-120.999367",
                      "location": "1101 J St"

}, {
      "name": "La Morenita",
          "description": "Familiar Mexican plates & margaritas supplied in a colorful eatery with a covered patio.",
              "latitude": "37.690265",
                  "longitude": "120.975067",
                      "location": "3500 Coffee Rd"

}, {
      "name": "An all American Bistro which is fusion between fine dining and casual fun. When you walk through our doors you are welcomed into an industrial chic restaurant",
          "description": "",
              "latitude": "37.700798",
                  "longitude": "-121.065691",
                      "location": "3801 Pelandale Ave"

}, {
      "name": "Sabiadee Thai – Laos Restaurant",
          "description": "Pad Thai, pho & curry dishes, plus salads & veggie options served in a familiar setting.",
              "latitude": "37.665783",
                  "longitude": "-120.939413",
                      "location": "2901 E Hatch Rd"

}, {
      "name": "Beirut Falafel Hut",
          "description": "Lebanese Restaurant that offers some of the best falafel, gyros and Middle Eastern Food.",
              "latitude": "37.638633",
                  "longitude": "-120.978020",
                      "location": "917 Yosemite Blvd"

}, {
      "name": "Surla’s",
          "description": "Restaurant & lounge serving international dishes from local ingredients in a splashy setting.",
              "latitude": "37.637059",
                  "longitude": "-120.992662",
                      "location": "431 12th St"

}, {
      "name": "Mr. T’s Donuts",
          "description": "Need an early sweet to get your day going? Mr. T's Donuts is the place to be serving up donuts.",
              "latitude": "37.689778",
                  "longitude": "-121.013236",
                      "location": "3507 Tully Rd"

}, {
      "name": "Farmers Catfish House",
          "description": "Family owned and operated since 1982, our crew will delight your taste buds with outstanding fried, charbroiled and blackened catfish, shrimp, halibut, chicken breast, rib eye steaks, and so much more.",
              "latitude": "37.682137",
                  "longitude": "-120.993525",
                      "location": "222 Mchenry Ave"

}, {
      "name": "Dewz Restaurant",
          "description": "Family-owned eatery serving elevated American cuisine & cocktails in a formal setting since 1997.",
              "latitude": "37.648165",
                  "longitude": "-120.995483",
                      "location": "41505 J St"

}, {
      "name": "Amian's Authentic Mexican Food & Bar",
          "description": "Hearty plates of traditional Mexican fare & margaritas are served at this festive outpost.",
              "latitude": "37.666823",
                  "longitude": "-121.029745",
                      "location": "2075 W Orangeburg Ave"

}, {
      "name": "Michael's Pizza",
          "description": "Mellow hangout for specialty pies, burgers, hot dogs & sandwiches, plus breakfast & happy hours.",
              "latitude": "37.644061",
                  "longitude": " -121.029447",
                      "location": "500 N Carpenter Rd "

}, {
      "name": "Fuzio Universal Bistro",
          "description": "East meets West at this casual spot for global flavors, from fire-grilled pizzas to spring rolls.",
              "latitude": "37.641697",
                  "longitude": "-121.000673",
                      "location": "1020 10th St, Suite"

}, {
      "name": "Bella Italia",
          "description": "Bubbly chain venue for Italian pasta, pizza and grill dishes, with a special children's menu.",
              "latitude": "37.679085",
                  "longitude": "-120.976924",
                      "location": "2625 Coffee Rd "

}, {
      "name": "Skerwers Kabob House",
          "description": "Casual eatery serving Mediterranean mainstays such as dolmas & kabobs plus wine & cocktails.",
              "latitude": "37.640120",
                  "longitude": "-121.000727",
                      "location": "906 J St, Modesto"

}, {
      "name": "P. Wexford's Pub",
          "description": "Modeled after a traditional British pub, this spot has beer plus classic fare like bangers & mash.",
              "latitude": "37.686221",
                  "longitude": "-120.994675",
                      "location": "23313 McHenry Ave"

}, {
      "name": "Redwood Café at the Vintage Gardens",
          "description": "At Redwood Café we have combined delicious food, a comfortable atmosphere, and outstanding service to deliver a truly one of a kind, casually elegant dining experience.",
              "latitude": "37.703537",
                  "longitude": "-121.049712",
                      "location": "4342 Dale Rd"

}])

pois.each do |p|
  p.update(business_code: "valley-hackathon")
end
