Given("que temos os seguintes restaurantes:") do |table|
  @restaurant_data = table.hashes
  puts @restaurant_data
end

Then("devo ver todos os restaurantes desta lista") do
  restaurante = all(".restaurant-item")

  @restaurant_data.each_with_index do |value, index|
    expect(restaurante[index]).to have_text value["nome"].upcase
    expect(restaurante[index]).to have_text value["categoria"]
    expect(restaurante[index]).to have_text value["entrega"]
    expect(restaurante[index]).to have_text value["avaliacao"]
  end
end
