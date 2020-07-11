describe 'Matcher output' do
  it { expect{ puts 'italo' }.to output.to_stdout }
  it { expect{ print 'italo' }.to output('italo').to_stdout }
  it { expect{ puts 'italo' }.to output(/italo/).to_stdout }

  it { expect{ warn 'italo' }.to output.to_stderr }
  it { expect{ warn 'italo' }.to output("italo\n").to_stderr }
  it { expect{ warn 'italo' }.to output(/italo/).to_stderr }
end