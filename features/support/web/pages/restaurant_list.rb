class RestaurantListPage
  include Capybara::DSL

  def load
    visit "/restaurants"
  end

  def list
    all(".restaurant-item")
  end
end
