module Legacy
  class Pyramid
    attr_accessor :type

    def self.build(type:)
      new(:type => type)
    end

    def initialize(type:)
      self.type = type
    end

    def show
      puts self.type
    end

  end
end
