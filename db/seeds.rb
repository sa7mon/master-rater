# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seed_artists = [
    {:name => 'Tigers Jaw'},
    {:name => 'Basement'},
    {:name => 'Balance and Composure'},
    {:name => 'La Dispute'},
    {:name => 'Camp Cope'},
    {:name => 'Petal'},
    {:name => 'Quicksand'},
    {:name => 'Honeyblood'},
    {:name => 'Seahaven'},
    {:name => 'Manchester Orchestra'},
    {:name => 'Foxing'},
    {:name => 'Ratatat'},
    {:name => 'Andrew Jackson Jihad'},
    {:name => 'Adventures'},
    {:name => 'American Football'},
    {:name => 'Arcade Fire'},
    {:name => 'Bad Books'},
    {:name => 'Beastie Boys'},
    {:name => 'Bill Withers'},
    {:name => 'Run the Jewels'},
    {:name => 'The Menzingers'},
    {:name => 'Modern Baseball'},
    {:name => 'Neutral Milk Hotel'},
    {:name => 'Old Gray'},
    {:name => 'Pianos Become The Teeth'},
    {:name => 'Radiator Hospital'},
    {:name => 'Right Away, Great Captain'},
    {:name => 'The World is a Beautiful Place and I am No Longer
              Afraid to Die'}
]

seed_artists.each do |a|
  Artist.create!(a)
end

def artistId(artistName)
   return Artist.where("name = '#{artistName}'").first.id
end


seed_albums = Array[
  {:name => 'Run The Jewels 3', :release_date => '12-25-2016', :label => 'Unknown', 
  :total_time => '00:51', :artist_id => artistId('Run the Jewels')}
  # {:name => '', :release_date => '', :label => 'Run For Cover Records', 
  # :total_time => '', :artist_id => ''},
  # {:name => '', :release_date => '', :label => 'Tiny Engines Records', 
  # :total_time => '', :artist_id => ''},
  # {:name => '', :release_date => '', :label => 'Independent', 
  # :total_time => '', :artist_id => ''},
  # {:name => '', :release_date => '', :label => 'Run For Cover Records', 
  # :total_time => '', :artist_id => ''}
]


seed_albums.each do |a|
  Album.create!(a)
end