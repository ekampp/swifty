module Swifty
  class ImportInfo
    attr_reader :content

    def initialize(file)
      @content = File.read(file).scan(/\{2\:([^\}]*)\}/).flatten.first
    end
  end
end
