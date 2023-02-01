# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     LiveViewStudio.Repo.insert!(%LiveViewStudio.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias LiveViewStudio.Repo
alias LiveViewStudio.Boats.Boat
alias LiveViewStudio.Stores.Store
alias LiveViewStudio.Servers.Server
alias LiveViewStudio.Donations.Donation
alias LiveViewStudio.PizzaOrders.PizzaOrder

%Boat{
  model: "1760 Retriever Jon Deluxe",
  price: "$",
  type: "fishing",
  image: "/images/boats/1760-retriever-jon-deluxe.jpg"
}
|> Repo.insert!()

%Boat{
  model: "1650 Super Hawk",
  price: "$",
  type: "fishing",
  image: "/images/boats/1650-super-hawk.jpg"
}
|> Repo.insert!()

%Boat{
  model: "1850 Super Hawk",
  price: "$$",
  type: "fishing",
  image: "/images/boats/1850-super-hawk.jpg"
}
|> Repo.insert!()

%Boat{
  model: "1950 Super Hawk",
  price: "$$",
  type: "fishing",
  image: "/images/boats/1950-super-hawk.jpg"
}
|> Repo.insert!()

%Boat{
  model: "2050 Authority",
  price: "$$$",
  type: "fishing",
  image: "/images/boats/2050-authority.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Deep Sea Elite",
  price: "$$$",
  type: "fishing",
  image: "/images/boats/deep-sea-elite.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Beneteau First 14",
  price: "$$",
  type: "sailing",
  image: "/images/boats/beneteau-first-14.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Beneteau First 24",
  price: "$$$",
  type: "sailing",
  image: "/images/boats/beneteau-first-24.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Beneteau Oceanis 31",
  price: "$$$",
  type: "sailing",
  image: "/images/boats/beneteau-oceanis-31.jpg"
}
|> Repo.insert!()

%Boat{
  model: "RS Quest",
  price: "$",
  type: "sailing",
  image: "/images/boats/rs-quest.jpg"
}
|> Repo.insert!()

%Boat{
  model: "RS Feva",
  price: "$",
  type: "sailing",
  image: "/images/boats/rs-feva.jpg"
}
|> Repo.insert!()

%Boat{
  model: "RS Cat 16",
  price: "$$",
  type: "sailing",
  image: "/images/boats/rs-cat-16.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Yamaha SX190",
  price: "$",
  type: "sporting",
  image: "/images/boats/yamaha-sx190.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Yamaha 212X",
  price: "$$",
  type: "sporting",
  image: "/images/boats/yamaha-212x.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Glastron GT180",
  price: "$",
  type: "sporting",
  image: "/images/boats/glastron-gt180.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Glastron GT225",
  price: "$$",
  type: "sporting",
  image: "/images/boats/glastron-gt225.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Yamaha 275E",
  price: "$$$",
  type: "sporting",
  image: "/images/boats/yamaha-275e.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Yamaha 275SD",
  price: "$$$",
  type: "sporting",
  image: "/images/boats/yamaha-275sd.jpg"
}
|> Repo.insert!()

%Store{
  name: "Downtown Helena",
  street: "312 Montana Avenue",
  phone_number: "406-555-0100",
  city: "Helena, MT",
  zip: "59602",
  open: true,
  hours: "8am - 10pm M-F"
}
|> Repo.insert!()

%Store{
  name: "East Helena",
  street: "227 Miner's Lane",
  phone_number: "406-555-0120",
  city: "Helena, MT",
  zip: "59602",
  open: false,
  hours: "8am - 10pm M-F"
}
|> Repo.insert!()

%Store{
  name: "Westside Helena",
  street: "734 Lake Loop",
  phone_number: "406-555-0130",
  city: "Helena, MT",
  zip: "59602",
  open: true,
  hours: "8am - 10pm M-F"
}
|> Repo.insert!()

%Store{
  name: "Downtown Denver",
  street: "426 Aspen Loop",
  phone_number: "303-555-0140",
  city: "Denver, CO",
  zip: "80204",
  open: true,
  hours: "8am - 10pm M-F"
}
|> Repo.insert!()

%Store{
  name: "Midtown Denver",
  street: "7 Broncos Parkway",
  phone_number: "720-555-0150",
  city: "Denver, CO",
  zip: "80204",
  open: false,
  hours: "8am - 10pm M-F"
}
|> Repo.insert!()

%Store{
  name: "Denver Stapleton",
  street: "965 Summit Peak",
  phone_number: "303-555-0160",
  city: "Denver, CO",
  zip: "80204",
  open: true,
  hours: "8am - 10pm M-F"
}
|> Repo.insert!()

%Store{
  name: "Denver West",
  street: "501 Mountain Lane",
  phone_number: "720-555-0170",
  city: "Denver, CO",
  zip: "80204",
  open: true,
  hours: "8am - 10pm M-F"
}
|> Repo.insert!()

%Server{
  name: "dancing-lizard",
  status: "up",
  deploy_count: 14,
  size: 19.5,
  framework: "Elixir/Phoenix",
  git_repo: "https://git.example.com/dancing-lizard.git",
  last_commit_id: "f3d41f7",
  last_commit_message: "If this works, I'm going disco    🕺"
}
|> Repo.insert!()

%Server{
  name: "lively-frog",
  status: "up",
  deploy_count: 12,
  size: 24.0,
  framework: "Elixir/Phoenix",
  git_repo: "https://git.example.com/lively-frog.git",
  last_commit_id: "d2eba26",
  last_commit_message: "Does it scale? 🤔"
}
|> Repo.insert!()

%Server{
  name: "curious-raven",
  status: "up",
  deploy_count: 21,
  size: 17.25,
  framework: "Ruby/Rails",
  git_repo: "https://git.example.com/curious-raven.git",
  last_commit_id: "a3708f1",
  last_commit_message: "Fixed a bug! 🐞"
}
|> Repo.insert!()

%Server{
  name: "cryptic-owl",
  status: "down",
  deploy_count: 2,
  size: 5.0,
  framework: "Elixir/Phoenix",
  git_repo: "https://git.example.com/cryptic-owl.git",
  last_commit_id: "c497e91",
  last_commit_message: "First big launch! 🤞"
}
|> Repo.insert!()

donation_items = [
  {"☕️", "Coffee"},
  {"🥛", "Milk"},
  {"🥩", "Beef"},
  {"🍗", "Chicken"},
  {"🍖", "Pork"},
  {"🍗", "Turkey"},
  {"🥔", "Potatoes"},
  {"🥣", "Cereal"},
  {"🥣", "Oatmeal"},
  {"🥚", "Eggs"},
  {"🥓", "Bacon"},
  {"🧀", "Cheese"},
  {"🥬", "Lettuce"},
  {"🥒", "Cucumber"},
  {"🐠", "Smoked Salmon"},
  {"🐟", "Tuna"},
  {"🐡", "Halibut"},
  {"🥦", "Broccoli"},
  {"🧅", "Onions"},
  {"🍊", "Oranges"},
  {"🍯", "Honey"},
  {"🍞", "Sourdough Bread"},
  {"🥖", "French Bread"},
  {"🍐", "Pear"},
  {"🥜", "Nuts"},
  {"🍎", "Apples"},
  {"🥥", "Coconut"},
  {"🧈", "Butter"},
  {"🧀", "Mozzarella"},
  {"🍅", "Tomatoes"},
  {"🍄", "Mushrooms"},
  {"🍚", "Rice"},
  {"🍜", "Pasta"},
  {"🍌", "Banana"},
  {"🥕", "Carrots"},
  {"🍋", "Lemons"},
  {"🍉", "Watermelons"},
  {"🍇", "Grapes"},
  {"🍓", "Strawberries"},
  {"🍈", "Melons"},
  {"🍒", "Cherries"},
  {"🍑", "Peaches"},
  {"🍍", "Pineapples"},
  {"🥝", "Kiwis"},
  {"🍆", "Eggplants"},
  {"🥑", "Avocados"},
  {"🌶", "Peppers"},
  {"🌽", "Corn"},
  {"🍠", "Sweet Potatoes"},
  {"🥯", "Bagels"},
  {"🥫", "Soup"},
  {"🍪", "Cookies"}
]

for _i <- 1..100 do
  {emoji, item} = Enum.random(donation_items)

  %Donation{
    emoji: emoji,
    item: item,
    quantity: Enum.random(1..20),
    days_until_expires: Enum.random(1..30)
  }
  |> Repo.insert!()
end

pizza_toppings = [
  "🍗 Chicken",
  "🌿 Basil",
  "🧄 Garlic",
  "🥓 Bacon",
  "🧀 Cheese",
  "🐠 Salmon",
  "🍤 Shrimp",
  "🥦 Broccoli",
  "🧅 Onions",
  "🍅 Tomatoes",
  "🍄 Mushrooms",
  "🍍 Pineapples",
  "🍆 Eggplants",
  "🥑 Avocados",
  "🌶 Peppers",
  "🍕 Pepperonis"
]

for _i <- 1..1000 do
  [topping1, topping2] =
    pizza_toppings
    |> Enum.shuffle()
    |> Enum.take(2)

  pizza = "#{Faker.Pizza.size()} #{Faker.Pizza.style()} with
     #{topping1} and #{topping2}"

  %PizzaOrder{
    username: Faker.Internet.user_name(),
    pizza: pizza
  }
  |> Repo.insert!()
end
