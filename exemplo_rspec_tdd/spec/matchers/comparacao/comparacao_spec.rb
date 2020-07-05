describe 'Matchers de Comparação' do
  it '>' do
    expect(5).to be > 1
  end

  it '>=' do
    expect(5).to be >= 5
    expect(5).to be >= 2
  end

  it '<' do
    expect(5).to be < 10
  end

  it '<=' do
    expect(5).to be <= 5
    expect(5).to be <= 8
  end

  it 'be_between' do
    expect(2).to be_between(2,7).inclusive
    expect(5).to be_between(2,7).inclusive
    expect(7).to be_between(2,7).inclusive
  end

  it 'be_between' do
    expect(5).to be_between(2,7).exclusive
  end

  it 'match' do
    expect('fulado@email.com').to match(/..@../)
  end

  it 'start_with' do
    expect('fulado de tal').to start_with('fulado')
    expect([1,2,3]).to start_with(1)
  end

  it 'end_with' do
    expect('fulado de tal').to end_with('tal')
    expect([1,2,3]).to end_with(3)
  end
end