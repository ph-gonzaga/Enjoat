When("escolho o restaurante {string}") do |restaurante|
  @rest_list_page.go(restaurante)
end

Then("eu vejo os seguintes items disponiveis no cardápio") do |table|
  @product_data = table.hashes
  items = @rest_page.menu

  @product_data.each_with_index do |value, index|
    expect(items[index]).to have_text value["produto"].upcase
    expect(items[index]).to have_text value["descricao"]
    expect(items[index]).to have_text value["preco"]
  end
end

Then("eu vejo os seguintes informações adicionais") do |table|
  infos = table.rows_hash

  detail = @rest_page.details
  expect(detail).to have_text infos["categoria"]
  expect(detail).to have_text infos["descriaao"]
  expect(detail).to have_text infos["horarios"]
end
