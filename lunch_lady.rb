class App
  def run
  @main_dish = [
    {food: 'Pizza', price: 1},
    {food: 'Hot Dog', price: 2},
    {food: 'Taco', price: 3}
    ]

  @side_dish = [
    {food: 'Beans', price: 1},
    {food: 'Fries', price: 2},
    {food: 'Sadness', price: 3}
    ]

  @total = 0
  
    get_menu
    input = gets.strip
    case input
    when "EXIT"
      puts "See you again soon!"
      return
    else
      choose_main
      choose_side
      choose_side
      create_another_order
    end
  end

  def get_menu
    puts "Welcome to the DevPoint Cafe! Type EXIT to leave!
    How much money do you have?"
  end

  def choose_main
    puts "Please choose a Main Dish"
    @main_dish.each_with_index do |main, index|
      puts "#{index + 1}. #{main[:food]} will cost you $#{main[:price]}.00"
    end

    get_main = gets.to_i
    selected_main_dish = @main_dish[get_main - 1]
    selected_main_dish[:price]
    @total = @total + selected_main_dish[:price]

    selected_main_dish = @main_dish[get_main - 1]
    puts "You ordered a #{selected_main_dish[:food]}!"
  end
  
  def choose_side
    puts "Please choose a Side Dish"
    @side_dish.each_with_index do |side, index|
      puts "#{index + 1}. #{side[:food]} will cost you $#{side[:price]}.00"
    end

    get_side = gets.to_i 
    selected_side_dish = @side_dish[get_side - 1]
    selected_side_dish[:price]
    @total = @total + selected_side_dish[:price]

    selected_side_dish = @side_dish[get_side - 1]
    puts "You ordered #{selected_side_dish[:food]}!"
    puts "The total of your order is $#{@total}.00"
  end

  def create_another_order
    puts "Would you like to place another order? y/n "
    another_order = gets.strip
    case another_order
    when "y"
      run
    when "n"
      puts "Thanks for coming to DevPoint Cafe!"
      return
    else
      puts "please try again"
      create_another_order
    end
  end
end
App.new.run