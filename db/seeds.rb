# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if Category.none?
  Category.create!([
    {name: "Suits"},
    {name: "Knitwear"},
    {name: "Trousers"},
    {name: "Dresses"},
    {name: "Outdoor"},
    {name: "Accessories"},
    {name: "Home"},
    {name: "Bedding"},
    {name: "Laundry"},
    {name: "Tops"}
  ])
end

items = [
  # Suits
  {name: "Tie", description: "Includes bow ties", category: Category.find_by_name("Suits")},
  {name: "Two-Piece Suit", description: "Blazer and trousers/skirt", category: Category.find_by_name("Suits")},
  {name: "Three-Piece Suit", description: "Blazer, waistcoat and trousers/skirt", category: Category.find_by_name("Suits")},
  {name: "Waistcoast", description: "Ironed and hung", category: Category.find_by_name("Suits")},
  {name: "Blazer", description: "Excludes fur, leather and velvet", category: Category.find_by_name("Suits")},
  {name: "Kilt", description: "Underwear not included", category: Category.find_by_name("Suits")},
  {name: "Dinner Suit", description: "Dinner jacket and trousers", category: Category.find_by_name("Suits")},
  {name: "Dinner Jacket", description: "Excludes bow ties", category: Category.find_by_name("Suits")},
  {name: "Two-Piece Morning Suit", description: "Tailcoat and trousers", category: Category.find_by_name("Suits")},
  {name: "Three-Piece Morning Suit", description: "Tailcoat, waiscoat and trousers", category: Category.find_by_name("Suits")},
  # Knitwear
  {name: "Light Knitwear", description: "Includes cashmere", category: Category.find_by_name("Knitwear")},
  {name: "Jumper", description: "Includes cashmere", category: Category.find_by_name("Knitwear")},
  {name: "Folded Jumper", description: "Includes cashmere", category: Category.find_by_name("Knitwear")},
  {name: "Heavy Knitwear", description: "Includes cable knit", category: Category.find_by_name("Knitwear")},
  {name: "Cardigan", description: "Includes cashmere", category: Category.find_by_name("Knitwear")},
  # Trousers
  {name: "Trousers", description: "Cleaned and ironed", category: Category.find_by_name("Trousers")},
  {name: "Silk Trousers", description: "Includes bead or sequin trim", category: Category.find_by_name("Trousers")},
  {name: "Jeans", description: "Wash and iron", category: Category.find_by_name("Trousers")},
  {name: "Shorts", description: "Wash and iron", category: Category.find_by_name("Trousers")},
  # Dresses
  {name: "Dress", description: "Excludes silk and leather", category: Category.find_by_name("Dresses")},
  {name: "Silk Dress", description: "Includes trim", category: Category.find_by_name("Dresses")},
  {name: "Dress with Trim", description: "Includes bead or sequin trim", category: Category.find_by_name("Dresses")},
  {name: "Evening Dress", description: "Excludes silk, fur, leather and velvet", category: Category.find_by_name("Dresses")},
  {name: "Skirt", description: "Excludes silk and leather", category: Category.find_by_name("Dresses")},
  {name: "Leather Skirt", description: "Includes suede", category: Category.find_by_name("Dresses")},
  {name: "Silk Skirt", description: "Includes bead or sequin trim", category: Category.find_by_name("Dresses")},
  {name: "Skirt with Trim", description: "Includes bead or sequin trim", category: Category.find_by_name("Dresses")},
  # Outdoor
  {name: "Overcoat", description: "Any length", category: Category.find_by_name("Outdoor")},
  {name: "Blazer", description: "Excludes fur, leather and velvet", category: Category.find_by_name("Outdoor")},
  {name: "Jacket", description: "Excludes fur, leather and velvet", category: Category.find_by_name("Outdoor")},
  {name: "Jacket with Trim", description: "Includes decorative trim", category: Category.find_by_name("Outdoor")},
  {name: "Tweed Jacket", description: "Includes tartan and wool", category: Category.find_by_name("Outdoor")},
  {name: "Down Jacket", description: "Includes duck feather", category: Category.find_by_name("Outdoor")},
  {name: "Fleece", description: "Jackets or jumpers", category: Category.find_by_name("Outdoor")},
  {name: "Down Coat", description: "Includes duck feather", category: Category.find_by_name("Outdoor")},
  # Accessories
  {name: "Tie", description: "Includes bow ties", category: Category.find_by_name("Accessories")},
  {name: "Scarf", description: "Includes silk", category: Category.find_by_name("Accessories")},
  {name: "Pashmina", description: "Wash and iron", category: Category.find_by_name("Accessories")},
  {name: "Handkerchief", description: "Includes pocket squares", category: Category.find_by_name("Accessories")},
  # Home
  {name: "Hand Towel", description: "Any size", category: Category.find_by_name("Home")},
  {name: "Bath Towel", description: "Any size", category: Category.find_by_name("Home")},
  {name: "Bath Mat", description: "Includes non-slip backing", category: Category.find_by_name("Home")},
  {name: "Dressing Gown", description: "Includes flannel and silk", category: Category.find_by_name("Home")},
  {name: "Tea Towel", description: "Wash and iron", category: Category.find_by_name("Home")},
  {name: "Apron", description: "Apron", category: Category.find_by_name("Home")},
  {name: "2m Tablecloth", description: "Excludes lace", category: Category.find_by_name("Home")},
  {name: "3m Tablecloth", description: "Excludes lace", category: Category.find_by_name("Home")},
  {name: "4m Tablecloth", description: "Excludes lace", category: Category.find_by_name("Home")},
  # Bedding
  {name: "Single Bed Set", description: "Bed Sheet, Duvet Cover, 1 Pillowcase", category: Category.find_by_name("Bedding")},
  {name: "Double Bed Set", description: "Bed Sheet, Duvet Cover, 2 Pillowcases", category: Category.find_by_name("Bedding")},
  {name: "King/Queen Bed Set", description: "Bed Sheet, Duvet Cover, 4 Pillowcases", category: Category.find_by_name("Bedding")},
  {name: "Pillow Case", description: "Wash, iron and fold", category: Category.find_by_name("Bedding")},
  {name: "Pillow", description: "Excludes feather/down pillows", category: Category.find_by_name("Bedding")},
  {name: "Feather Pillow", description: "Includes down", category: Category.find_by_name("Bedding")},
  {name: "Single Bed Sheet", description: "Wash, iron and fold", category: Category.find_by_name("Bedding")},
  {name: "Double Bed Sheet", description: "Up to 220cm x 260cm", category: Category.find_by_name("Bedding")},
  {name: "King/Queen Bed Sheet", description: "From 220cm x 260cm and higher", category: Category.find_by_name("Bedding")},
  {name: "Single Duvet Cover", description: "Wash, iron and fold", category: Category.find_by_name("Bedding")},
  {name: "Double Duvet Cover", description: "Up to 225cm x 220cm", category: Category.find_by_name("Bedding")},
  {name: "King/Queen Duvet Cover", description: "From 225cm x 220cm and higher", category: Category.find_by_name("Bedding")},
  {name: "Single Duvet", description: "Excludes feather/down duvets", category: Category.find_by_name("Bedding")},
  {name: "Double Duvet", description: "Up to 225cm x 220cm. Excludes feather/down duvets", category: Category.find_by_name("Bedding")},
  {name: "King/Queen Duvet", description: "From 225cm x 220cm and higher. Excludes feather/down duvets", category: Category.find_by_name("Bedding")},
  {name: "Feather Single Duvet", description: "Includes down", category: Category.find_by_name("Bedding")},
  {name: "Feather Double Duvet", description: "Up to 225cm x 220cm. Includes down", category: Category.find_by_name("Bedding")},
  {name: "Feather King/Queen Duvet", description: "From 225cm x 220cm and higher. Includes down", category: Category.find_by_name("Bedding")},
  {name: "Blanket", description: "Includes slankets", category: Category.find_by_name("Bedding")},
  {name: "Bedspread", description: "Any size up to 4m square", category: Category.find_by_name("Bedding")},
  {name: "Single Sleeping Bag", description: "Any season rating", category: Category.find_by_name("Bedding")},
  {name: "Double Sleeping Bag", description: "Any season rating", category: Category.find_by_name("Bedding")},
  # Laundry
  {name: "Wash, Tumble Dry & Fold", description: "6kg Excludes bedding & towels - 30° wash, tumble dried, not ironed", category: Category.find_by_name("Laundry")},
  # Tops
  {name: "Hung Shirt", description: "Washed, ironed and hung", category: Category.find_by_name("Tops")},
  {name: "Folded Shirt", description: "Washed, ironed and folded", category: Category.find_by_name("Tops")},
  {name: "Silk Shirt", description: "Cleaned, ironed and hung", category: Category.find_by_name("Tops")},
  {name: "Dinner Shirt", description: "Cleaned, ironed and hung", category: Category.find_by_name("Tops")},
  {name: "Hung Shirt – Iron Only", description: "You wash, we iron", category: Category.find_by_name("Tops")},
  {name: "5x Hung Shirts - Iron Only", description: "You wash, we iron", category: Category.find_by_name("Tops")},
  {name: "10x Hung Shirts - Iron Only", description: "You wash, we iron", category: Category.find_by_name("Tops")},
  {name: "Blouse - Iron Only", description: "You wash, we iron - Excludes silk", category: Category.find_by_name("Tops")},
  {name: "5x Blouses - Iron Only", description: "You wash, we iron - Excludes silk", category: Category.find_by_name("Tops")},
  {name: "Blouse", description: "Hand-finished, excludes silk and trim", category: Category.find_by_name("Tops")},
  {name: "Silk Blouse", description: "Hand-finished, includes trim", category: Category.find_by_name("Tops")},
  {name: "Hung T-Shirt", description: "Includes polo shirts", category: Category.find_by_name("Tops")},
  {name: "Folded T-Shirt", description: "Includes polo shirts", category: Category.find_by_name("Tops")},
]

if Item.none?
  Item.create!(items)
end
