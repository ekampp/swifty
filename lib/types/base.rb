module Swifty
  module Types
    class Base
      attr_reader :file, :export_info, :import_info, :meta_info, :type, :statements

      def initialize(file)
        @type = self.class.to_s.demodulize
        @file = file
        @export_info = Swifty::ExportInfo.new(file)
        @import_info = Swifty::ImportInfo.new(file)
        @meta_info = Swifty::MetaInfo.new(file)
        @statements = Swifty::Statements.new(file)
      end
    end
  end
end
