require 'pessoa'

describe 'Atributos' do
  it '#have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = 'Italo'
    pessoa.idade = 33

    expect(pessoa).to have_attributes(nome: 'Italo', idade: 33)
    expect(pessoa).to have_attributes(nome: start_with('I'), idade: (be<=33))
    expect(pessoa).to have_attributes(nome: starting_with('I'), idade: (be<=33))
    expect(pessoa).to have_attributes(nome: a_string_starting_with('I'), idade: (a_value<=33))
  end
end