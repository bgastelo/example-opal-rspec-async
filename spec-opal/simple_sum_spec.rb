require 'opal/rspec/async'

RSpec.describe 'a simple sum' do
  it 'equals two!' do
    expect(1 + 1).to eq(2)
  end

  it 'sleeps 0' do
    delay_with_promise 0 do
      expect(1 + 1).to eq(2)
    end
  end

  it 'sleeps 1' do
    delay_with_promise 1 do
      expect(1 + 1).to eq(2)
    end
  end
end
