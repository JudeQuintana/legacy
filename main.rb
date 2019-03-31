require './lib/legacy'

def main
  #my_pyramid = Legacy::Pyramid.build(type: "mayan")
  my_pyramid = Legacy::YamlLoader.build_pyramid
  my_pyramid.show

  my_pyramid.type = "egyptian"
  my_pyramid.show
end

main
