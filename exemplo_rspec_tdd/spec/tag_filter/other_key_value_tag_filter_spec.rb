describe Array.new([1,2,3]), 'Array', type: 'collection' do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2,1)
  end
end