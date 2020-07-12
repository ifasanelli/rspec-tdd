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
end