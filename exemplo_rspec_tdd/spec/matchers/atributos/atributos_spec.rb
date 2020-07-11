require 'pessoa'

describe 'Atributos' do
  # before(:example) do
  #   puts '>>> ANTES de CADA teste'
  #   @pessoa = Pessoa.new
  # end

  # after(:example) do
  #   puts '>>> DEPOIS de CADA teste'
  # end

  around(:example) do |test|
    puts '>>> ANTES de CADA teste'
    @pessoa = Pessoa.new

    test.run

    puts '>>> DEPOIS de CADA teste'
  end


  it '#have_attributes' do
    @pessoa.nome = 'Italo'
    @pessoa.idade = 33

    expect(@pessoa).to have_attributes(nome: 'Italo', idade: 33)
    expect(@pessoa).to have_attributes(nome: start_with('I'), idade: (be<=33))
    expect(@pessoa).to have_attributes(nome: starting_with('I'), idade: (be<=33))
    expect(@pessoa).to have_attributes(nome: a_string_starting_with('I'), idade: (a_value<=33))
  end
end