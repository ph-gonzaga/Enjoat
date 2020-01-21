Given("que tenho uma lista de restaurantes") do
  @restaurant_data = [
    { nome: "Bread & Bakery", category: "Padaria", delivery_time: "25 minutos", rating: 4.9 },
    { nome: "Burguer House", category: "Hamburgers", delivery_time: "30 minutos", rating: 3.5 },
  ]
end

When("acesso a lista de restaurantes") do
  @rest_list_page.load
end

Then("vejo todas as opções disponíveis") do
  restaurantes = @rest_list_page.list
  expect(restaurantes.size).to be > 0
  puts restaurantes.size
  puts restaurantes.class
end

Then("cada restaurante deve exibir sua categoria") do
  restaurants = @rest_list_page.list
  @restaurant_data.each_with_index do |value, index|
    puts value[:category]
    expect(restaurants[index]).to have_text value[:category]
  end
end

Then("cada restaurante deve exibir o tempo de entrega") do
  restaurants = @rest_list_page.list
  @restaurant_data.each_with_index do |value, index|
    puts value[:category]
    expect(restaurants[index]).to have_text value[:delivery_time]
  end
end

Then("cada restaurante deve exibir sua nota de avaliação") do
  restaurants = @rest_list_page.list
  @restaurant_data.each_with_index do |value, index|
    puts value[:category]
    expect(restaurants[index]).to have_text value[:rating]
  end
end
