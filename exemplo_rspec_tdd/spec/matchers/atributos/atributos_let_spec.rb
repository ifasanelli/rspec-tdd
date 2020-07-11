require 'pessoa'

describe 'Atributos' do
  let(:pessoa) { Pessoa.new }

  it '#have_attributes' do
    pessoa.nome = 'Italo'
    pessoa.idade = 33

    expect(pessoa).to have_attributes(nome: start_with('I'), idade: (be<=33))
  end
end