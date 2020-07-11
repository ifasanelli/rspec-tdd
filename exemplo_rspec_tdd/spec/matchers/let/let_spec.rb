# variável global, pode ser acessada por qualquer instância da classe
$counter = 0

describe 'let' do
  let(:count) { $counter += 1 }

  it 'memoriza o valor' do
    expect(count).to eq(1)  # 1a vez carregado
    expect(count).to eq(1)  # 2a vez, no cache
  end

  it 'não é cacheado entre os testes' do
    expect(count).to eq(2)  # 2a vez carregado
  end
end
