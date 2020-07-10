describe 'satisfy' do
  it { expect(9).to satisfy{ |num| num % 3 == 0 } }
  # Versão mais verbosa
  it {
    expect(9).to satisfy('be a multiple of 3') do |num|
      num % 3 == 0
    end
  }
end