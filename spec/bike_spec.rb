require "./lib/bike.rb"

RSpec.describe Bike do
  it { is_expected.to respond_to(:working?) }

  it { is_expected.to respond_to(:broken) }

  it 'working? should return false after user reports broken' do
    subject.broken
    expect(subject.working?).to eq(false)
  end

end