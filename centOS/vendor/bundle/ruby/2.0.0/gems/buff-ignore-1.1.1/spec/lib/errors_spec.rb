require 'spec_helper'

describe Buff::Ignore::BuffIgnoreError do
  it 'inherits from StandardError' do
    expect(subject).to be_a(StandardError)
  end
end

describe Buff::Ignore::IgnoreFileNotFound do
  let(:path) { '/path/to/file' }
  subject { described_class.new(path) }

  it 'accepts a filepath as the parameter' do
    expect {
      described_class.new(path)
    }.to_not raise_error
  end

  context 'when path is nil' do
    let(:path) { nil }

    it 'has the correct message' do
      expect(subject.message).to eq("No ignore file found at ''!")
    end
  end
end
