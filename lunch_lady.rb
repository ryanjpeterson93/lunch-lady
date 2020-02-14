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
      total_lunch
    end

  end

  def get_menu
    puts "Welcome to the DevPoint Cafe! Type EXIT to leave!
    How much money do you have?"
  end

  def choose_main
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
    @side_dish.each_with_index do |side, index|
      puts "#{index + 1}. #{side[:food]} will cost you $#{side[:price]}.00"
    end
    get_side = gets.to_i 
    selected_side_dish = @side_dish[get_side - 1]
    selected_side_dish[:price]
    @total = @total + selected_side_dish[:price]

    selected_side_dish = @side_dish[get_side - 1]
    puts "You ordered #{selected_side_dish[:food]}!"
  end

  def total_lunch
    puts "The total of your order is $#{@total}.00"
    puts "Thanks for coming to DevPoint Cafe!"
  end

end
App.new.run