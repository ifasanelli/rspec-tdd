describe 'Matchers de Comparação' do
  it '#equal - testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to_not equal(y)
  end

  it '#be - testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to_not be(y)
  end

  it '#eql - testa o valor' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end
end