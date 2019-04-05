module Legacy
  class Sarcophagus
    attr_accessor :inscription, :type, :summon_spell

    def initialize(inscription:, type:, summon_spell:, avatar:)
      self.inscription = inscription
      self.type = type
      self.summon_spell = summon_spell
      @avatars = Legacy::YamlLoader.load_legacy_config["avatars"]
      @avatar = @avatars[avatar]
    end

    def summon(spell)
      @avatar if spell == self.summon_spell
    end

  end
end
