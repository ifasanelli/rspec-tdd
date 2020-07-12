describe Array.new([1,2,3]), 'Array', :collection do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2,1)
  end

  it '#contain_exactly', slow: true do
    expect(subject).to contain_exactly(2,3,1)
  end

  it '#match', :slow do
    expect(subject).to match([1,2,3])
  end
end