describe 'Test Double' do
  it '--' do
    usuario = double('User') # A classe User não existe

    # Maneira menos verbosa
    allow(usuario).to receive_messages(name: 'Italo', password: 'secret')

    # Maneira mais verbosa
    allow(usuario).to receive(:name).and_return('Italo')
    allow(usuario).to receive(:password).and_return('secret')

    usuario.name
    usuario.password
  end
end