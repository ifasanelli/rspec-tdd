require 'student'

describe 'Mocks' do
  it '#bar' do
    # Arrange / Setup
    student = Student.new

    # Assert / Verify
    expect(student).to receive(:bar)

    #Act / Exercise
    student.bar
  end

  it 'Args' do
    student = Student.new

    expect(student).to receive(:foo).with(123)

    student.foo(123)
  end

  it 'repetição' do
    student = Student.new

    expect(student).to receive(:foo).with(123).twice

    student.foo(123)
    student.foo(123)
  end

  it 'retorno' do
    student = Student.new

    expect(student).to receive(:foo).with(123).and_return(true)

    student.foo(123)
  end
end