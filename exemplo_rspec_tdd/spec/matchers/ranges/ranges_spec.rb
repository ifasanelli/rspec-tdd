describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2,5)
    expect(subject).to_not cover(0,6)
  end
end