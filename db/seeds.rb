puts "Seeding Database..."

categories = [
  Category.find_or_create_by!(name: "Toys"),
  Category.find_or_create_by!(name: "Computers"),
  Category.find_or_create_by!(name: "Clothing"),
  Category.find_or_create_by!(name: "Kitchen"),
  Category.find_or_create_by!(name: "Books")
]

puts ""
puts "Categories:"

categories.each do |category|
  puts "#{category.name} category created ✓"
end

products = [
  Product.find_or_create_by!(name:"Bakugan", description: "Bakugan Battle Brawlers toy set", price: 19.99, category: categories[0]),
  Product.find_or_create_by!(name:"Macbook Pro", description: "The latest apple laptop", price: 1499.99, category: categories[1]),
  Product.find_or_create_by!(name:"Launch Academy T-Shirt", description: "Green Graduate T-Shirt for completing Launch Academy curriculum", price: 5.99, category: categories[2]),
  Product.find_or_create_by!(name:"Dishes", description: "10 dish dining set", price: 39.99, category: categories[3]),
  Product.find_or_create_by!(name:"Eragon", description: "1st book in Paolini\'s Inheritance series", price: 8.99, category: categories[4]),
  Product.find_or_create_by!(name:"Brinsingr", description: "2nd book in Paolini\'s Inheritance series", price: 8.99, category: categories[4]),
  Product.find_or_create_by!(name:"Eldest", description: "3rd book in Paolini\'s Inheritance series", price: 8.99, category: categories[4]),
  Product.find_or_create_by!(name:"Inheritance", description: "4th book in Paolini\'s Inheritance series", price: 8.99, category: categories[4])
]

puts ""
puts "Products:"

products.each do |product|
  puts "#{product.name} created in #{product.category.name} ✓"
end

puts ""
puts "Database successfully seeded!"