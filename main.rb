require './lib/legacy'

def main
  my_pyramid = Legacy::YamlLoader.build_pyramid
  puts my_pyramid.display
  # yes pyramid is of Chichen Itza
  # Shield Jaguar is from Yaxchilan, i know this
  # pyramid is the only mayan ascii i could find

  puts
  puts my_pyramid.sarcophagus.inscription
  puts

  summon_spell = my_pyramid.sarcophagus.summon_spell
  puts summon_spell

  puts
  puts my_pyramid.sarcophagus.summon(summon_spell)
end

main
