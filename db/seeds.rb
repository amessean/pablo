Booking.destroy_all
User.destroy_all

arthur = User.create!(
  email: "arthurrr@gmail.com",
  password: "arthurrr",
  )


Booking1 = Booking.create!(
  title: "Booking1",
  category: ["Diner", "Party", "Weekend", "Holiday"].sample,
)

Booking2 = Booking.create!(
  title: "Booking2",
  category: ["Diner", "Party", "Weekend", "Holiday"].sample,
)

Booking3 = Booking.create!(
  title: "Booking3",
  category: ["Diner", "Party", "Weekend", "Holiday"].sample,
)

puts "Done!"
