require 'contador'

describe 'Matcher change' do
  # verifica se há alteração do estado da classe
  it { expect{Contador.incrementa}.to change { Contador.qtd } } # qtd == 1

  # verifica se há alteração e se ela ocorre da maneira especificada pelo método by()
  it { expect{Contador.incrementa}.to change { Contador.qtd }.by(1) } # qtd == 2

  # verifica o estado inicial e final da alteração
  it { expect{Contador.incrementa}.to change { Contador.qtd }.from(2).to(3) } # qtd == 3
end