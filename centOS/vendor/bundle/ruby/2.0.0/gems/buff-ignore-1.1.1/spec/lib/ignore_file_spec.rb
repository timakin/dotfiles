require 'spec_helper'

describe Buff::Ignore::IgnoreFile do
  let(:ignores) { %w(Gemfile *.lock bacon) }
  let(:path) { '~/fakepath' }

  before do
    File.stub(:exists?).with(path).and_return(true)
    File.stub(:readlines).and_return(ignores)
  end

  subject { described_class.new(path) }

  describe '.initialize' do
    context 'when the filepath is nil' do
      it 'raises an exception' do
        expect {
          described_class.new(nil)
        }.to raise_error(Buff::Ignore::IgnoreFileNotFound)
      end
    end

    context 'when the filepath does not exist' do
      before { File.stub(:exists?).and_return(false) }

      it 'raises an exception' do
        expect {
          described_class.new('/lol/wtf?/really/no.rb')
        }.to raise_error(Buff::Ignore::IgnoreFileNotFound)
      end
    end

    context 'when the file exists' do
      subject { described_class.new(path) }

      it 'sets the filepath instance variable to the expanded path' do
        filepath = subject.instance_variable_get(:@filepath)
        expect(filepath).to eq(File.expand_path(path))
      end
    end
  end

  describe '#apply' do
    let(:list) { ['Gemfile', 'Gemfile.lock', 'bacon', 'eggs'] }

    it 'leaves the original array unmodified' do
      original = list.dup
      subject.apply(list)
      expect(list).to eq(original)
    end

    it 'delegates to #apply!' do
      subject.should_receive(:apply!).with(list).once
      subject.apply(list)
    end
  end

  describe '#apply!' do
    let(:list) { ['Gemfile', 'Gemfile.lock', 'bacon', 'eggs'] }

    it 'removes standard files' do
      subject.apply!(list)
      expect(list).to_not include('Gemfile')
      expect(list).to_not include('bacon')
    end

    it 'removes the globs' do
      subject.apply!(list)
      expect(list).to_not include('Gemfile.lock')
    end

    it 'does not remove a non-matching pattern' do
      subject.apply!(list)
      expect(list).to include('eggs')
    end

    it 'returns nil if nothing was removed' do
      result = subject.apply!([])
      expect(result).to be_nil
    end
  end
end
