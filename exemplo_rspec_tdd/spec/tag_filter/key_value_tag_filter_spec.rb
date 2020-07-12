describe 'Tag filter', type: 'collection' do
  it { expect([1,7,9]).to all be_odd }
  it { expect(['ruby', 'rails']).to all( be_a(String).and include('r') ) }
end