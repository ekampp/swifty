module Swifty
  class Statements
    include Enumerable

    attr_reader :content

    def initialize(file)
      statement_section = File.read(file).scan(/\{4\:([^\}]*)\}/).flatten.first
      @content = Cmxl.parse statement_section
    end

    def each(&block)
      @content.each(&block)
    end
  end
end
