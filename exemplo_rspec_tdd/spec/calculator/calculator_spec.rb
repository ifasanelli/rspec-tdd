require 'calculator'

describe Calculator do
  it 'uses sum method for 2 numbers' do
    # Arrange
    calc = Calculator.new

    # Act
    result = calc.sum(5, 7)

    # Assert
    expect(result).to eq(12)
  end

  it 'uses sum method for 2 negative numbers' do
    # Arrange
    calc = Calculator.new

    # Act
    result = calc.sum(-5, 7)

    # Assert
    expect(result).to eq(2)
  end
end