require "spec_helper"

module Swifty
  module Types
    RSpec.describe MT940 do
      let(:instance) { MT940.new(file) }
      let(:file) { $root.join('fixtures', 'mt940') }

      it_behaves_like :basic_type
    end
  end
end
