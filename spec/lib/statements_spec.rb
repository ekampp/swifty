require "spec_helper"

module Swifty
  RSpec.describe Statements do
    let(:file) { $root.join('fixtures', 'mt940') }
    let(:statements) { Statements.new(file) }

    describe '#new' do
      subject { statements }

      it 'uses on cmxl' do
        expect(Cmxl).to receive(:parse).and_call_original
        subject
      end
    end

    describe '#content' do
      subject { statements.content }
      it { is_expected.to be_a Array }

      context 'elements' do
        subject { statements.first }
        it { is_expected.to be_a Cmxl::Statement }
      end
    end
  end
end
