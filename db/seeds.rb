# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Providers.
providers = [
  'UT NUBE PRIVADA (SYNAPSIS COL Y PER)',
  'COLSOFT',
  'IFX',
  'COLOMBIA TELECOMUNICACIONES',
  'UNE',
  'LEVEL 3',
  'UT CF-PL-IV',

  'UT NUBE PRIVADA (SYNAPSIS COL Y PER) I',
  'COLSOFT I',
  'IFX I',
  'COLOMBIA TELECOMUNICACIONES I',
  'UNE I',
  'LEVEL 3 I',
  'UT CF-PL-IV I'
]

providers.each do |name|
  Provider.create(
    name: name
  )
end
