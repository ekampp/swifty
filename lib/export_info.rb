module Swifty
  class ExportInfo
    attr_reader :content

    def initialize(file)
      @content = File.read(file).scan(/\{1\:([^\}]*)\}/).flatten.first
    end
  end
end
