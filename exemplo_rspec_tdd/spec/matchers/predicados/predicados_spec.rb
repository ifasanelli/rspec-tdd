describe 'Predicados' do
  it '#odd' do
    expect(1.odd?).to be true

    # utilizando matcher predicado
    expect(1).to be_odd
  end
end