module Legacy
  class Pyramid
    def self.build(type:)
      new(type: type)
    end

    def initialize(pyramids: Legacy::YamlLoader.load_legacy_config["pyramids"], type:)
      @type = type
      @pyramids = pyramids
      @pyramid = pyramids[type]
    end

    def type=(new_type)
      @type = new_type
      @pyramid = @pyramids[new_type]
    end

    def show
      puts @pyramid
    end

  end
end
