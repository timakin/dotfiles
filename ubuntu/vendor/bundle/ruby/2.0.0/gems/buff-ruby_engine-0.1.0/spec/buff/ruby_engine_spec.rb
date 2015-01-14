require 'spec_helper'

describe Buff::RubyEngine do
  describe "#jruby?" do
    subject { described_class.jruby? }

    context "when the ruby engine is jruby" do
      before { stub_const("RUBY_ENGINE", "jruby") }

      it { expect(subject).to be_true }
    end

    context "when the ruby engine is not jruby" do
      before { stub_const("RUBY_ENGINE", "ruby") }

      it { expect(subject).to be_false }
    end
  end

  describe "#mri?" do
    subject { described_class.mri? }

    context "when the ruby engine is mri" do
      before { stub_const("RUBY_ENGINE", "ruby") }

      it { expect(subject).to be_true }
    end

    context "when the ruby engine is not mri" do
      before { stub_const("RUBY_ENGINE", "jruby") }

      it { expect(subject).to be_false }
    end
  end

  describe "#rubinius?" do
    subject { described_class.rubinius? }

    context "when the ruby engine is rubinius" do
      before { stub_const("RUBY_ENGINE", "rbx") }

      it { expect(subject).to be_true }
    end

    context "when the ruby engine is not rubinius" do
      before { stub_const("RUBY_ENGINE", "mri") }

      it { expect(subject).to be_false }
    end
  end
end
