class Item

  attr_accessor :name, :type, :origin, :price

  def initialize(name, type, origin, price)
    @name   = name
    @type   = type # book, food or medical
    @origin = origin # local or imported
    @price  = price
    @tax_value = 0
  end

  def basic_sales_tax
    if @type == "book" || "food" || "medical"
      @price
    else
      @tax_value += (0.10 * @price)
      @price += @tax_value
    end
  end

  def import_sales_tax
    if @origin == "imported"
      @tax_value += (0.05 * @price)
      @price += @tax_value
    end
  end

end

class Receipt < Item

  def total_cost(shop_cart)
    shop_cart.each do | |
      @price + @tax_value
    end
  end

  def total_taxes(shop_cart)
    shop_cart.each do | |
      @tax_value += @tax_value
    end
  end

  def print_receipt(shop_cart)
    shop_cart.each do |item, value| # value must include tax
      puts "#{@name}" + "*********************" + "#{@price + @tax}"
    end
    puts shop_cart.total_cost
    puts shop_cart.total_taxes
    puts "Have a Nice Day! :)"
  end

end

puts "Hi, what's in your shopping cart today?"
shop_cart.gets.chomp

shop_cart1
book = Item.new("Coding for Dummies", "book", "local", 12.49) # tax exempt
music_record = Item.new("Neil Young", "regular", "basic", 14.99) # basic tax
chocolate_bar = Item.new("Bounty", "food", "local", 0.85) # tax exempt
sales_taxes = 1.50
total = 29.83

shop_cart2
imported_chocolates = Item.new("Royce", "food", "imported", 10.00) # import tax
imported_perfume = Item.new("Le Labo", "basic", "imported", 47.50) # import tax && basic tax
sales_taxes = 7.65
total = 65.15

shop_cart3
imported_perfume_2 = Item.new("Diptyque", "basic", "imported", 27.99) # import tax && basic tax
perfume = Item.new("CK One", "basic", "local", 18.99) # basic tax
headache_pills = Item.new("Tylenol", "medical", "local", 9.75) # tax exempt
imported_chocolates_2 = Item.new("Mast Brothers", "food", "imported", 11.25) # import tax
sales_taxes = 6.70
total = 74.68
