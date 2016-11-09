
def show(menu)
 menu.each do |item|
   puts item
 end
 end


menu = {
    "sections" =>   [
        {

            tacos: [
                {
                    price: 3.50,
                    name: "Al pastor",
                    description: "pork, achiote, pineapple"
                },
                {price: 3.50,
                  name: "Rajas",
                  description: "poblano, onion, cojita, creama"
                },
                {price: 3.50,
                  name: "pollo",
                  description: "chicken, scallion, corn"
                },
            ]
        },
        {
            beers: [
              {
                price: 7.00,
                name: "Corona Extra"
              },
              {
                price: 6.00,
                name: "Pacifico"
              },
              {
                price: 5.00,
                name: "Tecate"
              }
    ]
}
]
}

options = [
    "get the check",
    "place order",
    "show menu",
    "done ordering"
]

puts "What would you like to do?"
puts " Choose from: #{options}"

choice = gets.chomp.downcas

case choice
when "show menu"
  show(menu)
when "place order"
  puts "Would you like to put in an order for tacos or beer?"
  puts menu["sections"][0][:tacos]
when "done ordering"

when "get the check"

end


#### Auston's code
taquiza_menu = {
  "sections" =>   [
    {
      name: "Appetizers",
      dishes: [
        {
          price: 5.99,
          name: "Taco Locos",
          description: "Crazy Mexican Tacos"
        },
        {
          price: 7.99,
          name: "Taco Pocos",
          description: "Not a lot of Mexican Tacos"
        }
      ]
    },
    {
      name: "Deserts",
      dishes: [
        {
          price: 5.99,
          name: "Fried Ice Cream",
          description: "Ice cream covered in frosted flakes and fried in pig fat"
        }
      ]
    }
  ]
}

def show_menu(menu)
  item_number = 1
  menu["sections"].each do |section|
    puts "-" * 80
    puts section[:name]
    puts "-" * 80
    section[:dishes].each do |dish|
      puts "#{item_number}. #{dish[:name]} - $#{dish[:price]}"
      puts dish[:description]
      puts ""
      item_number += 1
    end
  end
end

def show_options
  possible_options =[
    "get the check",
    "place order",
    "show menu",
    "leave"
  ]

  puts "How can I help you?"
  puts possible_options.each_with_index.map { |item, i| "#{i+1}. #{item}"}
  gets.chomp.downcase
end

def take_order(taquiza_menu, array_with_order)
  puts "What is the item number of the dish you'd like to order?"
  puts "If you are done ordering type: done ordering"
  item_number = gets.chomp.downcase
  menu_items = taquiza_menu["sections"].map { |s| s[:dishes] }.flatten

  if item_number == "done ordering"
    return array_with_order
  else
    take_order taquiza_menu, array_with_order << menu_items[item_number.to_i-1]
  end
end

def show_check(order)
  order_subtotal = 0.00
  puts "=" * 80
  puts ""
  puts "              RECEIPT                 "
  order.each do |item|
    puts "#{item[:name]} - #{item[:price]}"
    order_subtotal += item[:price]
  end
  tax = order_subtotal*0.07
  total = order_subtotal+tax
  puts ""
  puts "SUBTOTAL #{order_subtotal.round(2)}"
  puts "TAX $#{tax.round(2)}"
  puts "TOTAL $#{total.round(2)}"
  puts ""
  puts "TIP (options)"
  [0.10, 0.15, 0.18, 0.20].each do |tip|
    puts "#{(tip*100).truncate}% is $#{(total*tip).round(2)}"
  end
  puts ""
  puts "=" * 80
end

puts "Welcome to TAQUIZA..."
user_input = show_options
users_order = []

loop do
  case user_input
  when "show menu", "3"
    show_menu(taquiza_menu)
  when "get the check", "1"
    if users_order.length == 0
      puts "We need you to order first"
      show_menu(taquiza_menu)
    else
      show_check(users_order)
    end
  when "place order", "2"
    users_order = take_order(taquiza_menu, users_order)
  when "leave", "4"
    exit
  end
  user_input = show_options
end
