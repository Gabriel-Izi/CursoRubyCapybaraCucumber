Quando('eu cadastro meu usuario') do
  user.load
  user.preencher_usuario

  sleep(3)
end

Então('eu verifico se meu usuario foi cadastrado') do
  @msg = find('#notice')
  expect(@msg.text).to eql 'Usuário Criado com sucesso'
end
