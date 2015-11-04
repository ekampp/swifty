module Swifty
  class MetaInfo
    attr_reader :content

    def initialize(file)
      @content = File.read(file).scan(/\{3\:([^\}]*)\}/).flatten.first
    end
  end
end
