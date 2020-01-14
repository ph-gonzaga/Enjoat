Given("que o produto desejado é {string}") do |produto|
  @produto_nome = produto
end

Given("o valor do produto é de {string}") do |valor|
  @produto_valor = valor
end

When("eu adiciono {int} unidade") do |int|
  find(".menu-item-info-box", text: @produto_nome.upcase).find(".add-to-cart").click
end

Then("{int} unidade deste item deve ser adicionado ao carrinho") do |quantidade|
  cart = find("#cart")
  expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
  puts "(#{quantidade}x) #{@produto_nome}"
end

Then("o valor total deve ser de {string}") do |valor_total|
    cart = find("#cart")
    expect(cart).to have_text valor_total

end
