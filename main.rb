require './lib/legacy'

def main
  my_pyramid = Legacy::YamlLoader.build_pyramid
  my_pyramid.show
end

main
