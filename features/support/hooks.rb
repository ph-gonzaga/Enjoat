Before do
  @cart_page = CartPage.new
  page.current_window.resize_to(1440, 900)
end

Before("@bread_bakery") do
  visit "/restaurants/bread-bakery/menu"
end
