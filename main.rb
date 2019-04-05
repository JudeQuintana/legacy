require './lib/legacy'

def main
  #my_pyramid = Legacy::Pyramid.build(type: "mayan")
  my_pyramid = Legacy::YamlLoader.build_pyramid
  my_pyramid.show

  puts my_pyramid.sarcophagus.inscription

  summon_spell = my_pyramid.sarcophagus.summon_spell

  puts summon_spell

  my_pyramid.sarcophagus.summon(summon_spell)
  #my_pyramid.show
end

main
