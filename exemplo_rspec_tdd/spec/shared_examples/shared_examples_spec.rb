require 'pessoa'

describe 'Pessoa' do

  shared_examples 'status' do |sentimento|
    it "#{sentimento}" do
      pessoa.send("#{sentimento}!")
      expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!")
    end
  end

  subject(:pessoa) { Pessoa.new }

  include_examples 'status', :feliz
  it_behaves_like 'status', :triste
  it_should_behave_like 'status', :contente
end