User.create(username: "kp", first_name: "Kelsey", last_name: "Pedersen", email: "kelsey@gmail.com", password: "kp")

User.create(username: "ap", first_name: "Allie", last_name: "Pedersen", email: "allie@gmail.com", password: "ap")




Destination.create(city: "Zion National Park", country: "United States", days: 4, highlights: "Hiking Angels Landing", lodging: "Camping", transportation: "Car", trip_id: 1)

Destination.create(city: "Bryce National Park", country: "United States", days: 7, highlights: "Walking around the canyon rim", lodging: "Camping", transportation: "Car", trip_id: 1)


Destination.create(city: "San Francisco", country: "United States", days: 5,highlights: "Golden Gate Bridge", lodging: "Marriott", transportation: "Car", trip_id: 2)

Destination.create(city: "Sonoma", country: "United States", days: 4, highlights: "Be ready to drink vino!", lodging: "Vineyards Inn", transportation: "Car", trip_id: 2)

Destination.create(city: "Sydney", country: "Australia", days: 4, highlights: "Opera House", lodging: "Hilton", transportation: "Bus", trip_id: 3)

Destination.create(city: "Melbourne", country: "Australia", days: 5, highlights: "The beach", lodging: "Hostel", transportation: "Car", trip_id: 3)

Wishlist.create(user_id: 1)

Wishlist.create(user_id: 2)

Trip.create(title: "12 Days in Utah", category: "Adventure", season: "Spring", comments: "Bring a camping tent", user_id: 1, wishlist_id: 1)

Trip.create(title: "20 Days in Northern California", category: "Romance", season: "Summer", comments: "Don't forget your camera", user_id: 1, wishlist_id: 2)

Trip.create(title: "15 Days in Australia", category: "Family", season: "Fall",comments: "Pack light", user_id: 2, wishlist_id: 1)