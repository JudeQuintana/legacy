module Legacy
  class Pyramid
    attr_reader :type, :chambers, :doors, :sarcophagus, :display

    def initialize(type:, chambers: 3, doors: "triptych", sarcophagus:)
      @type = type
      @pyramids = Legacy::YamlLoader.load_legacy_config["pyramids"]
      @display = @pyramids[type]
      @chambers = chambers
      @doors = doors
      @sarcophagus = sarcophagus
    end

    def type=(new_type)
      @type = new_type
      @display = @pyramids[new_type]
    end

  end
end
