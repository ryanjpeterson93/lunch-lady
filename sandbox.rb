@side_dish = [
  {food: 'Beans', price: 1.0},
  {food: 'Fries', price: 2},
  {food: 'Sadness', price: 3}
  ]

  @side_dish.each_with_index do |side, index|
    puts "#{index + 1}. #{side[:food]} will cost you $#{side[:price]}.00"
  end
  selected_side_dish_index = gets.to_i 

  #you want to get price of side from selected index
  # puts selected_side_dish_index

  selected_side_dish = @side_dish[selected_side_dish_index - 1]
  
  puts selected_side_dish
  
  puts selected_side_dish[:price]
  total = total + selected_side_dish[:price]
