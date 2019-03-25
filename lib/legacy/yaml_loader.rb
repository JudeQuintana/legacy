module Legacy
  class YamlLoader

    def self.load_legacy_config
      YAML.load_file(File.expand_path('../../../config/legacy_config.yaml', __FILE__))
    end

    def self.load_my_legacy_config
      YAML.load_file(File.expand_path('../../../config/my_legacy_config.yaml', __FILE__))
    end

    def self.build_pyramid
      pyramids = load_legacy_config["pyramids"]
      my_pyramid = load_my_legacy_config["pyramid"]

      Pyramid.build(type: pyramids[my_pyramid])
    end

  end
end
