module Legacy
  class YamlLoader

    def self.load_legacy_config
      #@@config ||= YAML.load_file(File.expand_path('../../../config/legacy_config.yaml', __FILE__))
      YAML.load_file(File.expand_path('../../../config/legacy_config.yaml', __FILE__))
    end

    def self.load_my_legacy_config
      #@@my_config ||= YAML.load_file(File.expand_path('../../../config/my_legacy_config.yaml', __FILE__))
      YAML.load_file(File.expand_path('../../../config/my_legacy_config.yaml', __FILE__))
    end

    def self.build_pyramid
      my_legacy = load_my_legacy_config
      my_pyramid_type = my_legacy["pyramid"]
      my_avatar = my_legacy["avatar"]
      my_sarcophagus = my_legacy["sarcophagus"]

      new_sarcophagus = Sarcophagus.new(inscription: my_sarcophagus["inscription"],
                                        type: my_sarcophagus["type"],
                                        summon_spell: my_sarcophagus["summon_spell"],
                                        avatar: my_avatar)

      Pyramid.new(type: my_pyramid_type, sarcophagus: new_sarcophagus)
    end

  end
end
