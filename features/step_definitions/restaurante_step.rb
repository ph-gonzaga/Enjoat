When("acesso a lista de restaurantes") do
  visit "/restaurants"
end

Then("vejo todas as opções disponíveis") do
  restaurantes = all(".restaurant-item")
  puts restaurantes.size
  puts restaurantes.class
end

Then("cada restaurante deve exibir sua categoria") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("cada restaurante deve exibir o tempo de entrega") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("cada restaurante deve exibir sua nota de avaliação") do
  pending # Write code here that turns the phrase above into concrete actions
end
