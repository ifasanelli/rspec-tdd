RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3]), 'Array' do
  it { expect(subject).to exclude(4) }
  it { expect(subject).to include(2,1) }
end