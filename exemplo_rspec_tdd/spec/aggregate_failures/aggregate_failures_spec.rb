describe 'Agregando falhas' do
  it 'be_between / falhas agregadas' do
    aggregate_failures do
      # expect(1).to be_between(2,7).inclusive
      # expect(8).to be_between(2,7).inclusive
    end
  end

  # Ou pode-se inserí-las no it
  it 'be_between / falhas agregadas', :aggregate_failures do
    # expect(1).to be_between(2,7).inclusive
    # expect(8).to be_between(2,7).inclusive
  end
end
