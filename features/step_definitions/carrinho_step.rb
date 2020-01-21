Given("que o produto desejado é {string}") do |produto|
  @produto_nome = produto
end

Given("o valor do produto é de {string}") do |valor|
  @produto_valor = valor
end

When("eu adiciono {int} unidade\\(s)") do |quantidade|
  quantidade.times do
    find(".menu-item-info-box", text: @produto_nome.upcase).find(".add-to-cart").click
  end
end

Then("{int} unidade\\(s) deste item deve ser adicionados ao carrinho") do |quantidade|
  cart = find("#cart")
  expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
  puts "(#{quantidade}x) #{@produto_nome}"
end

Then("o valor total deve ser de {string}") do |valor_total|
  cart = find("#cart")
  total = cart.find("tr", text: "Total:").find("td")
  expect(total.text).to have_text valor_total
end

#lista de produtos

Given("que o produto desejados são:") do |table|
  @product_list = table.hashes
end

When("eu adiciono todos os itens") do
  @product_list.each do |p|
    p["quantidade"].to_i.times do
      find(".menu-item-info-box", text: p["nome"].upcase).find(".add-to-cart").click
    end
  end
end

Then("vejo todos os itens no carrinho") do
  cart = find("#cart")
  quantidade = 1
  @product_list.each do |p|
    expect(cart).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
  end
end

#Remover itens

Given("que eu tenho itens no carrinho:") do |table|
  @product_list = table.hashes

  steps %{
    When eu adiciono todos os itens
  }
end

When("eu removo somente o item {int}") do |item|
  cart = find("#cart")
  cart.all("table tbody tr")[item].find(".danger").click
end

When("eu removo todos os itens") do
  @product_list.each_with_index do |value, index|
    cart = find("#cart")
    cart.all("table tbody tr")[index].find(".danger").click
  end
end

Then("vejo a seguinte mensagem no carrinho {string}") do |mensagem|
  cart = find("#cart")
  expect(cart).to have_text mensagem
end

#limpar carrinho
When("eu limpo o meu carrinho") do
  click_button "Limpar"
end
