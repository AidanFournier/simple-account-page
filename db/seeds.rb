puts "Creating users"
User.destroy_all

aidan = User.create!(
    email: "aidan@gmail.com",
    password: "111111",
    first_name: "Aidan",
    last_name: "Fournier",
  )

puts "Users created"