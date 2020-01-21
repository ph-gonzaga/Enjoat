Given("que o produto desejado é {string}") do |produto|
  @produto_nome = produto
end

Given("o valor do produto é de {string}") do |valor|
  @produto_valor = valor
end

When("eu adiciono {int} unidade\\(s)") do |quantidade|
  quantidade.times do
    @rest_page.add_to_cart(@produto_nome)
  end
end

Then("{int} unidade\\(s) deste item deve ser adicionados ao carrinho") do |quantidade|
  expect(@rest_page.cart.box).to have_text "(#{quantidade}x) #{@produto_nome}"
  puts "(#{quantidade}x) #{@produto_nome}"
end

Then("o valor total deve ser de {string}") do |valor_total|
  expect(@rest_page.cart.total.text).to have_text valor_total
end

#lista de produtos

Given("que o produto desejados são:") do |table|
  @product_list = table.hashes
end

When("eu adiciono todos os itens") do
  @product_list.each do |p|
    p["quantidade"].to_i.times do
      @rest_page.add_to_cart(p["nome"])
    end
  end
end

Then("vejo todos os itens no carrinho") do
  quantidade = 1
  @product_list.each do |p|
    expect(@rest_page.cart.box).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
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
  @rest_page.cart.remove_item(item)
end

When("eu removo todos os itens") do
  @product_list.each_with_index do |value, index|
    @rest_page.cart.remove_item(index)
  end
end

Then("vejo a seguinte mensagem no carrinho {string}") do |mensagem|
  expect(@rest_page.cart.box).to have_text mensagem
end

#limpar carrinho
When("eu limpo o meu carrinho") do
  @rest_page.cart.clean
end
