User.create!([
  {email: "andrew@test.com", password: "123123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8, current_sign_in_at: "2017-03-06 22:13:49", last_sign_in_at: "2017-02-19 05:44:46", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true, username: "accua", fullname: "Andrew Accuardi", avatar_file_name: "IMG_20160911_181711.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 426708, avatar_updated_at: "2017-02-17 23:47:20"}
])
Build.create!([
  {name: "PCT Thru-Hiker", price: nil, user_id: 2, picture_file_name: "packloudout.jpeg", picture_content_type: "image/jpeg", picture_file_size: 9901, picture_updated_at: "2017-03-09 07:33:32", description: "IPSUM"},
  {name: "Ultimate Weekender!", price: nil, user_id: 2, picture_file_name: "backpack.jpg", picture_content_type: "image/jpeg", picture_file_size: 780155, picture_updated_at: "2017-03-09 08:06:09", description: "IPSUM"}
])
Category.create!([
  {name: "Navigation"},
  {name: "Sun Protection"},
  {name: "Insulation"},
  {name: "Illumination"},
  {name: "First-aid"},
  {name: "Fire"},
  {name: "Tools and Repair"},
  {name: "Nutrition"},
  {name: "Hydration"},
  {name: "Emergency"},
  {name: "Backpack"},
  {name: "Daypack"},
  {name: "Pack Cover"},
  {name: "Tent"},
  {name: "Tarp"},
  {name: "Bivy Sack"},
  {name: "Footprint"},
  {name: "Sleeping Bag"},
  {name: "Compression/Stuff Sack"},
  {name: "Sleeping Pad"},
  {name: "Pillow"},
  {name: "Trekking Poles"},
  {name: "Ice Axe"},
  {name: "Meals"},
  {name: "Fuel"},
  {name: "Cookset"},
  {name: "Stove"},
  {name: "Bear Canister"},
  {name: "Miscellaneous"}
])
Product.create!([
  {name: "Adventure Medical Kits Mountain Series Guide Medical Kit", description: "Adventure Medical Kits Mountain-Series Guide medical kit is essential for leading groups on outdoor excursions, empowering you to provide first aid to several people while exploring the wilderness.\r\n", price: 99, picture_file_name: "fristadi.jpeg", picture_content_type: "image/jpeg", picture_file_size: 41127, picture_updated_at: "2017-03-09 04:03:16"},
  {name: "UCO Stormproof Match Kit", description: "Hedge your bets against the weather with a UCO Stormproof Match Kit. They're windproof and waterproof, and light up and relight quickly and consistently even after being submerged in water.", price: 7, picture_file_name: "waterproof_matches.jpeg", picture_content_type: "image/jpeg", picture_file_size: 26474, picture_updated_at: "2017-03-09 04:04:35"},
  {name: "Snow Peak Titanium Multi Compact Cookset", description: "Whip up gourmet meals in the backcountry! The Snow Peak Titanium Multi Compact cookset is perfect for the minimalist looking to shave weight without limiting the menu.\r\n\r\n", price: 95, picture_file_name: "snow_peak_cooket.jpeg", picture_content_type: "image/jpeg", picture_file_size: 20185, picture_updated_at: "2017-03-09 03:20:07"},
  {name: "Black Diamond Revolt", description: "The Black Diamond ReVolt is a powerful, versatile, rechargeable headlamp for climbing, hiking, camping or any other time you may find yourself out after dark. With 130 lumens of power, the ReVolt easily spots anchors while you rappel in the dark, proximity lighting gives you a large area of light for hiking down the trail and a dimming feature lets you choose just the right amount of light for the task at hand. A three-level power meter keeps you from ever being surprised by dead batteries, and the ReVolt can run on standard AAA batteries in addition to the included rechargeable batteries.", price: 59, picture_file_name: "revolt.jpg", picture_content_type: "image/jpeg", picture_file_size: 15993, picture_updated_at: "2017-03-09 03:35:45"},
  {name: "Snow Peak GigaPower Auto Stove", description: "Winner of Backpacker magazine's 2015 Editors' Choice Gold Award, this featherweight, super-compact stove is barely noticeable in your pack. Click the Piezo igniter for an instant cooking power.", price: 39, picture_file_name: "gigapeakstove.jpeg", picture_content_type: "image/jpeg", picture_file_size: 23098, picture_updated_at: "2017-03-09 03:38:09"},
  {name: "Go Lite Quest 50L Backpack", description: "The GoLite Quest pack is ideal for the fleet-footed backpacker, adventure traveler and thru-hiker. It's built with Tier 1 recycled fabric and offers superior comfort and solid functionality.", price: 119, picture_file_name: "go_lite.jpg", picture_content_type: "image/jpeg", picture_file_size: 636188, picture_updated_at: "2017-03-09 03:39:04"},
  {name: "GoLite Shangri-La 2 Tent", description: "The GoLite Shangri-La 2 shelter is an ultra lightweight, strong, 3-4 season pyramid shelter. It protects and offers a comfortable living space for backpacking and mountaineering.", price: 199, picture_file_name: "golitetent.jpeg", picture_content_type: "image/jpeg", picture_file_size: 9769, picture_updated_at: "2017-03-09 03:40:36"},
  {name: "Snow Peak Giga Power Pro Iso Fuel Gold ", description: "110 gram Butane/ Propane mix fuel, with protective valve cover. Light weight canister for camping, hiking, mountain climbing and many more outdoor activities.\r\n\r\n", price: 7, picture_file_name: "snowpeakfuel.jpg", picture_content_type: "image/jpeg", picture_file_size: 27475, picture_updated_at: "2017-03-09 03:43:13"},
  {name: "AETHER AG™ 60", description: "The Aether AG™ 60 is the perfect backpacking solution when your primary concerns are carrying heavy loads in ventilated comfort for a weekend or longer. Now featuring our innovative Anti-Gravity™ technology and custom fit along with an incredibly robust feature set and a top lid that converts to a functional daypack or summit pack.", price: 289, picture_file_name: "ospreybackpack.jpg", picture_content_type: "image/jpeg", picture_file_size: 178384, picture_updated_at: "2017-03-09 03:44:30"},
  {name: "Osprey Daylite Daypack", description: "This daypack has the organization and comfort you need for a day of hiking your local trails or the cobbled streets of Amsterdam.\r\n\r\n Eggplant Purple\r\n", price: 49, picture_file_name: "ospreydayback.jpeg", picture_content_type: "image/jpeg", picture_file_size: 26920, picture_updated_at: "2017-03-09 03:45:48"},
  {name: "Suunto MC-2G Navigator Compass", description: "This full-featured compass lets you take accurate bearings with a sighting notch and mirror, plus its patented Global needle works anywhere on earth.", price: 94, picture_file_name: "suuntoexpensive.jpeg", picture_content_type: "image/jpeg", picture_file_size: 30733, picture_updated_at: "2017-03-09 03:47:07"},
  {name: "Suunto M-3 D Leader Compass", description: "With luminescent markings and a built-in magnifying lense, this reliable baseplate adventure compass is tailored for navigating and surviving in extreme conditions.\r\n\r\n \r\n", price: 44, picture_file_name: "suuntocheaper.jpeg", picture_content_type: "image/jpeg", picture_file_size: 32337, picture_updated_at: "2017-03-09 03:48:04"},
  {name: "REI Co-op Down Jacket - Men's", description: "The REI Co-Op Down Jacket is a versatile piece of gear for a range of temperatures and activities. Down insulation and weather-resistant nylon join forces to help keep you warm.", price: 99, picture_file_name: "reidown.jpeg", picture_content_type: "image/jpeg", picture_file_size: 35700, picture_updated_at: "2017-03-09 03:55:46"},
  {name: "Patagonia Down Sweater - Women's", description: "This down sweater delivers featherweight, compressible warmth for your cold-weather outdoor fun while everyone else is languishing at the gym or huddled by the fireplace.\r\n", price: 229, picture_file_name: "womensdown.jpeg", picture_content_type: "image/jpeg", picture_file_size: 31823, picture_updated_at: "2017-03-09 03:58:15"},
  {name: "Fenix UC30 Rechargeable Flashlight", description: "This rechargeable flashlight combines high-intensity lighting with reliable micro-USB charging in a go-anywhere size. It also has 5 outputs, including instant strobe.", price: 49, picture_file_name: "flashlight.jpeg", picture_content_type: "image/jpeg", picture_file_size: 20949, picture_updated_at: "2017-03-09 03:59:22"},
  {name: "Goal Zero Lighthouse 400 Lantern", description: "Hang It, stand It, store It—the Goal Zero Lighthouse 400 lantern lets you enjoy bright, directional light anytime, anywhere. You can also use it to give your phone or tablet a boost.", price: 79, picture_file_name: "lantern.jpeg", picture_content_type: "image/jpeg", picture_file_size: 19441, picture_updated_at: "2017-03-09 04:00:46"},
  {name: "Adventure Medical Kits Mountain Series Day Tripper Lite Medical Kit", description: "The Adventure Medical Kits Mountain Series Day Tripper Lite medical kit comes equipped with the essentials you need to manage basic first-aid issues during a 1-day adventure alone or with a friend.", price: 14, picture_file_name: "cheapfirstaid.jpeg", picture_content_type: "image/jpeg", picture_file_size: 44085, picture_updated_at: "2017-03-09 04:02:16"},
  {name: "Benchmade 15031-2 North Fork Knife", description: "A classic wood handle and an Axis locking mechanism make the Benchmade 15031-2 North Fork an essential part of every adventure.", price: 144, picture_file_name: "benchmade.jpeg", picture_content_type: "image/jpeg", picture_file_size: 24925, picture_updated_at: "2017-03-09 04:09:13"},
  {name: "Swiss Army Champ Knife", description: "The biggest Swiss Army knife of them all, the full-featured Swiss Army Champ knife is precision crafted to ensure years of reliable use.", price: 79, picture_file_name: "swissarmyknive.jpeg", picture_content_type: "image/jpeg", picture_file_size: 38450, picture_updated_at: "2017-03-09 04:10:40"},
  {name: "Gear Aid Tenacious Tape Repair Tape", description: "Tenacious Tape™ repair tape is ideal for fast in-field repairs on tents, tarps and rain gear.\r\n\r\n Front View (Platinum White)\r\n", price: 4, picture_file_name: "tenacious.jpeg", picture_content_type: "image/jpeg", picture_file_size: 18385, picture_updated_at: "2017-03-09 04:11:44"},
  {name: "Osprey Hydraulics Reservoir - 3 Liters", description: "The 3-liter Osprey Hydraulics reservoir is ideal for large-volume packs and long-duration activities.\r\n", price: 41, picture_file_name: "reservior.jpeg", picture_content_type: "image/jpeg", picture_file_size: 15553, picture_updated_at: "2017-03-09 04:15:49"},
  {name: "Osprey Hydraulics Reservoir - 2 Liters", description: "The 2-liter Osprey Hydraulics reservoir is ideal for large-volume packs and long-duration activities.", price: 39, picture_file_name: "ospreyhydration.jpeg", picture_content_type: "image/jpeg", picture_file_size: 16107, picture_updated_at: "2017-03-09 04:18:00"},
  {name: "Hydro Flask Straw Lid Vacuum Water Bottle - 32 fl. oz.", description: "The 32 fl. oz. Hydro Flask Straw Lid vacuum water bottle features an easy-to-use, high-flow-rate sip straw. It's highly durable and has a convenient finger loop for easy carrying on the go.", price: 44, picture_file_name: "hydro.jpeg", picture_content_type: "image/jpeg", picture_file_size: 10492, picture_updated_at: "2017-03-09 04:19:25"},
  {name: "Sawyer Squeeze Water Filter System", description: "The Sawyer Squeeze Water Filter has a field weight of only 3 oz., and it makes filtering water as simple as filling a pouch and squeezing water into your mouth. No pills, no pumps and no wait time.", price: 39, picture_file_name: "sawyersqeeze.jpeg", picture_content_type: "image/jpeg", picture_file_size: 35265, picture_updated_at: "2017-03-09 04:21:36"},
  {name: "SteriPEN Ultra Water Purifier", description: "When you're traveling or backpacking, put your trust in the rechargeable SteriPEN Ultra water purifier to be your source for potable water.", price: 99, picture_file_name: "steripen.jpeg", picture_content_type: "image/jpeg", picture_file_size: 28453, picture_updated_at: "2017-03-09 04:22:36"},
  {name: "Sea to Summit eVent Compression Dry Sack", description: "This valve-free compression dry sack uses a breathable base made of eVent™ waterproof fabric that allows air to be pushed out, but keeps water from entering.", price: 49, picture_file_name: "seacompressionbaf_g.jpeg", picture_content_type: "image/jpeg", picture_file_size: 23847, picture_updated_at: "2017-03-09 04:29:46"},
  {name: "Therm-a-Rest RidgeRest SOlite Sleeping Pad", description: "A counterpart to the RidgeRest Solar, the Therm-a-Rest SOLite sleeping pad is lighter yet also features an aluminized surface to reflect body heat for a boost in warmth and comfort.", price: 35, picture_file_name: "zwrapish.jpeg", picture_content_type: "image/jpeg", picture_file_size: 44243, picture_updated_at: "2017-03-09 04:34:39"},
  {name: "REI Co-op Half Dome 2 Plus Tent", description: "Lightweight and weather worthy, the extra roomy Half Dome 2 Plus tent offers many comfortable touches for 2 backpackers, along with an expressive twist—you can choose from different fly colors.\r\n", price: 219, picture_file_name: "rei_tent.jpeg", picture_content_type: "image/jpeg", picture_file_size: 12913, picture_updated_at: "2017-03-09 04:24:08"},
  {name: "Marmot Never Summer Down Sleeping Bag", description: "Very compressible with little weight and lots of loft, the Marmot Never Summer sleeping bag is an ideal choice for trips, climbs and treks when sub-freezing weather is imminent.", price: 299, picture_file_name: "marmotbag.jpeg", picture_content_type: "image/jpeg", picture_file_size: 14792, picture_updated_at: "2017-03-09 04:31:20"},
  {name: "Sea to Summit Escapist Tarp Shelter", description: "Escape to the wilderness with the versatile, compact and ultralight Sea to Summit Escapist Tarp Shelter. This 3-season shelter is perfect for 2 minimalist adventurers.\r\n", price: 149, picture_file_name: "sea2summittarp.jpeg", picture_content_type: "image/jpeg", picture_file_size: 7608, picture_updated_at: "2017-03-09 04:25:36"},
  {name: "Outdoor Research Alpine Bivy", description: "If you like to travel light but often find yourself in iffy weather conditions, this poled bivy offers rugged protection from the elements in all seasons.", price: 249, picture_file_name: "bivysack.jpeg", picture_content_type: "image/jpeg", picture_file_size: 19029, picture_updated_at: "2017-03-09 04:27:06"},
  {name: "NEMO Fillo Backpacking Pillow", description: "Put an end to restless nights of backpacking and camping with the NEMO Fillo pillow.\r\n\r\n Moss Green\r\n", price: 35, picture_file_name: "pillow.jpeg", picture_content_type: "image/jpeg", picture_file_size: 14325, picture_updated_at: "2017-03-09 04:35:26"},
  {name: "Black Diamond Trail Back Trekking Poles - Pair", description: "The Black Diamond Trail Back trekking poles offer a reliable, easily adjustable, 3-section design for daily hikes and multiday adventures.", price: 79, picture_file_name: "trekking.jpeg", picture_content_type: "image/jpeg", picture_file_size: 7548, picture_updated_at: "2017-03-09 04:36:49"},
  {name: "REI Co-op Half Dome 2 Plus Footprint", description: "Use this lightweight polyester footprint under your REI Half Dome 2 Plus Tent to protect its floor from abrasion and wear.", price: 35, picture_file_name: "footpriny.jpeg", picture_content_type: "image/jpeg", picture_file_size: 19936, picture_updated_at: "2017-03-09 04:28:34"},
  {name: "Therm-a-Rest NeoAir XLite Sleeping Pad", description: "For the alpinist, thru-hiker or backcountry minimalist who's counting every ounce, there's no better choice to assure the kind of rest you need before a big day in the mountains.\r\n", price: 149, picture_file_name: "thermarestlikemine.jpeg", picture_content_type: "image/jpeg", picture_file_size: 23958, picture_updated_at: "2017-03-09 04:33:51"},
  {name: "Black Diamond Trail Pro Shock Women's Trekking Poles - Pair", description: "The women's Black Diamond Trail Pro Shock Trekking Poles combine FlickLock Pro adjustability and comfy foam grips with a shock-absorbing system to enhance your treks through all kinds of terrain.", price: 135, picture_file_name: "womenstrekking.jpeg", picture_content_type: "image/jpeg", picture_file_size: 13774, picture_updated_at: "2017-03-09 04:37:51"},
  {name: "Black Diamond Raven Ice Axe", description: "A traditional axe for legendary ascents, the trusty Black Diamond Raven delivers quality you can feel.", price: 0, picture_file_name: "iceace.jpeg", picture_content_type: "image/jpeg", picture_file_size: 11663, picture_updated_at: "2017-03-09 04:38:48"},
  {name: "Mountain House Beef Stroganoff with Noodles - 2.5 Servings", description: "Mountain House Beef Stroganoff is hands-down one of the most popular meals they make. With real pieces of tender beef and savory mushrooms and onions in a creamy sauce, one bite will make you believe.", price: 8, picture_file_name: "mountainhouse.jpeg", picture_content_type: "image/jpeg", picture_file_size: 57529, picture_updated_at: "2017-03-09 04:39:53"},
  {name: "BearVault BV500 Food Container", description: "Keep bears from inviting themselves to your feast! The BearVault BV500 container features simple access, light weight and large volume.\r\n\r\n \r\n", price: 79, picture_file_name: "bearvault.jpeg", picture_content_type: "image/jpeg", picture_file_size: 23596, picture_updated_at: "2017-03-09 04:42:17"}
])
