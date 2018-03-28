# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seed_artists = [
    {:name => 'Tigers Jaw'},
    {:name => 'Defeater'},
    {:name => 'La Dispute'},
    {:name => 'Camp Cope'},
    {:name => 'Seahaven'},
    # {:name => 'Manchester Orchestra'},
    {:name => 'Ratatat'},
    {:name => 'Andrew Jackson Jihad'},
    # {:name => 'Adventures'},
    {:name => 'American Football'},
    {:name => 'Arcade Fire'},
    # {:name => 'Beastie Boys'},
    {:name => 'Bill Withers'},
    {:name => 'Run the Jewels'},
    # {:name => 'Modern Baseball'},
    {:name => 'Neutral Milk Hotel'},
    # {:name => 'Old Gray'},
    # {:name => 'Pianos Become The Teeth'},
    # {:name => 'Radiator Hospital'},
    {:name => 'Right Away, Great Captain!'},
    # {:name => 'The World is a Beautiful Place and I am No Longer
              # Afraid to Die'}, 
    {:name => 'Tiny Moving Parts'},
    # {:name => 'Hostage Calm'}
]

seed_artists.each do |a|
  Artist.create!(a)
end

seed_genres = Array[
  {:name => 'Pop Rock'},
  {:name => 'Rap'},
  {:name => 'Indie Rock'},
  {:name => 'Hardcore'},
  {:name => 'Emo'},
  {:name => 'Fuzz Folk'},
  {:name => 'Folk Punk'},
  {:name => 'Folk'},
  {:name => 'Indie Rock'},
  {:name => 'Soul'},
  {:name => 'Electronic'}
#   {:name => ''}
]

seed_genres.each do |a| 
  Genre.create!(a)
end

def genreId(genreName)
  return Genre.where("name = '#{genreName}'").first.id
end


def artistId(artistName)
   return Artist.where("name = '#{artistName}'").first.id
end


seed_albums = Array[
  # Release Date:  DD-MM-YYYY
  # Total Time:    HH:MM:SS
  
  {:name => 'Run The Jewels 3', :release_date => '25-12-2016', 
  :label => 'Independent', :total_time => '00:51:00', 
  :artist_id => artistId('Run the Jewels'), :genre_id => genreId('Rap'),
  :musicbrainz_id => '386a689f-7ec4-4c4f-8a0c-fef18124a25f'},
  
  {:name => 'Run The Jewels 2', :release_date => '24-10-2014', 
  :label => 'Independent', :total_time => '00:39:02', 
  :artist_id => artistId('Run the Jewels'), :genre_id => genreId('Rap'),
  :musicbrainz_id => '8d5673a1-f435-4a02-9e32-8741397969c8'},
  
  {:name => 'Empty Days and Sleepless Nights', :release_date => '08-03-2011', 
  :label => 'Bridge Nine Records', :total_time => '00:49:12', 
  :artist_id => artistId('Defeater'), :genre_id => genreId('Hardcore'),
  :musicbrainz_id => 'c62ce5af-8e5e-4be2-b3b6-8917b4c81cc8'},
  
  {:name => 'Letters Home', :release_date => '16-07-2013', 
  :label => 'Bridge Nine Records', :total_time => '00:34:03', 
  :artist_id => artistId('Defeater'), :genre_id => genreId('Hardcore'),
  :musicbrainz_id => '61474025-b76a-42f9-809e-5ac01a73439f'},
  
  {:name => 'In the Aeroplane Over the Sea', :release_date => '20-01-1998', 
  :label => 'Merge Records', :total_time => '00:39:54', 
  :artist_id => artistId('Neutral Milk Hotel'), :genre_id => genreId('Fuzz Folk'),
  :musicbrainz_id => 'c6033275-4050-367d-884f-91d82e4e35dd'},
  
  {:name => 'People Who Can Eat People', :release_date => '11-09-2007', 
  :label => 'Asian Man Records', :total_time => '00:25:12', 
  :artist_id => artistId('Andrew Jackson Jihad'), :genre_id => genreId('Folk Punk'),
  :musicbrainz_id => '565cdcdb-e066-4eb4-871c-fa252dc850cf'},
  
  {:name => 'Christmas Island', :release_date => '05-06-2014', 
  :label => 'SideOneDummy Records', :total_time => '00:33:43', 
  :artist_id => artistId('Andrew Jackson Jihad'), :genre_id => genreId('Folk Punk'),
  :musicbrainz_id => '833a3c79-0280-436e-841b-e2d502350945'},
  
  {:name => 'Winter Forever', :release_date => '08-11-2011', 
  :label => 'Run For Cover Records', :total_time => '00:37:16', 
  :artist_id => artistId('Seahaven'), :genre_id => genreId('Indie Rock'),
  :musicbrainz_id => '80cf0227-b96a-491c-9097-84c55d18f050'},
  
  {:name => 'Reverie Lagoon: Music for Escapism Only', :release_date => '25-03-2014', 
  :label => 'Run For Cover Records', :total_time => '00:51:28', 
  :artist_id => artistId('Seahaven'), :genre_id => genreId('Indie Rock'),
  :musicbrainz_id => 'c0464441-6494-4156-b110-dcc751b48b93'},
  
  {:name => 'Charmer', :release_date => '30-05-2014', 
  :label => 'Run For Cover Records', :total_time => '00:38:01', 
  :artist_id => artistId('Tigers Jaw'), :genre_id => genreId('Indie Rock'),
  :musicbrainz_id => '3dcbe39c-9b32-4ca5-9d36-35757eb6d020'},
  
  {:name => 'Belongs to the Dead', :release_date => '01-12-2013', 
  :label => 'Run For Cover Records', :total_time => '00:24:21', 
  :artist_id => artistId('Tigers Jaw'), :genre_id => genreId('Indie Rock'),
  :musicbrainz_id => 'cf874470-4915-4c20-8686-ab954d2b606c'},

  {:name => 'Wildlife', :release_date => '04-10-2011', 
  :label => 'No Sleep Records', :total_time => '00:57:42', 
  :artist_id => artistId('La Dispute'), :genre_id => genreId('Hardcore'),
  :musicbrainz_id => 'db01945e-9945-4166-8e89-62daeac038c5'},
  
  {:name => 'Somewhere at the Bottom of the River Between Vega and Altair', :release_date => '11-11-2008', 
  :label => 'No Sleep Records', :total_time => '00:51:39', 
  :artist_id => artistId('La Dispute'), :genre_id => genreId('Hardcore'),
  :musicbrainz_id => '843314e2-e0b5-41f5-9093-cb010c9826ba'},
  
  {:name => 'How To Socialize and Make Friends', :release_date => '03-03-2018', 
  :label => 'Run For Cover Records', :total_time => '00:38:10', 
  :artist_id => artistId('Camp Cope'), :genre_id => genreId('Indie Rock'),
  :musicbrainz_id => 'c481b60d-ecb5-4cef-a78c-2d58bd2e6854'},
    
  {:name => 'Funeral', :release_date => '14-09-2004', 
  :label => 'Merge Records', :total_time => '00:48:00', 
  :artist_id => artistId('Arcade Fire'), :genre_id => genreId('Indie Rock'),
  :musicbrainz_id => '2c57dafb-3995-3d73-b1a6-4ef691dcab37'},
  
  {:name => 'Funeral', :release_date => '14-09-2004', 
  :label => 'Merge Records', :total_time => '00:48:00', 
  :artist_id => artistId('Arcade Fire'), :genre_id => genreId('Indie Rock'),
  :musicbrainz_id => '2c57dafb-3995-3d73-b1a6-4ef691dcab37'},
  
  {:name => 'Just as I Am', :release_date => '13-05-1971', 
  :label => 'Sussex', :total_time => '00:35:41', 
  :artist_id => artistId('Bill Withers'), :genre_id => genreId('Soul'),
  :musicbrainz_id => '7e0f7789-8410-44ba-8100-78dafcb8e158'},
  
  {:name => 'American Football', :release_date => '14-09-1999', 
  :label => 'Polyvinyl', :total_time => '00:40:53', 
  :artist_id => artistId('American Football'), :genre_id => genreId('Emo'),
  :musicbrainz_id => 'e9b93107-b316-4880-a81f-acc4b8c10c65'},
  
  {:name => 'LP4', :release_date => '08-06-2010', 
  :label => 'XL Recordings', :total_time => '00:42:43', 
  :artist_id => artistId('Ratatat'), :genre_id => genreId('Electronic'),
  :musicbrainz_id => 'c0416132-129a-42bc-8b39-422147a3fcf3'},
  
  {:name => 'Magnifique', :release_date => '17-07-2015', 
  :label => 'XL Recordings', :total_time => '00:44:56', 
  :artist_id => artistId('Ratatat'), :genre_id => genreId('Electronic'),
  :musicbrainz_id => '92664345-1118-45a0-ac44-c54585e5aab7'},
  
  {:name => 'The Church of the Good Thief', :release_date => '10-06-2012', 
  :label => 'Favorite Gentleman Records', :total_time => '00:38:40', 
  :artist_id => artistId('Right Away, Great Captain!'), :genre_id => genreId('Folk'),
  :musicbrainz_id => '80b4727b-38a2-41db-8565-312c4d0248ad'},
  
  {:name => 'The Bitter End', :release_date => '08-01-2006', 
  :label => 'Favorite Gentleman Records', :total_time => '00:50:21', 
  :artist_id => artistId('Right Away, Great Captain!'), :genre_id => genreId('Folk'),
  :musicbrainz_id => '940808b8-01d3-4962-8da9-da8e29151fbf'},

  
  # {:name => '', :release_date => '', :label => '', :total_time => '', 
  # :artist_id => artistId(''), :genre_id => genreId('')}
]

seed_albums.each do |a|
  Album.create!(a)
end

def albumId(albumName)
  return Album.where("name = '#{albumName}'").first.id
end

seed_users = Array [
  # bcrypt('password') = $2y$10$aHX62mTF.m1dJzzIg0wkpujCvZmKbEUsRr1sFnkIdANc0lzp1q.uu
  
  {:username => 'dan', :password_hash => '$2y$10$aHX62mTF.m1dJzzIg0wkpujCvZmKbEUsRr1sFnkIdANc0lzp1q.uu',
  :biography => "I'm Dan."},
  {:username => 'ikthedar', :password_hash => '$2y$10$aHX62mTF.m1dJzzIg0wkpujCvZmKbEUsRr1sFnkIdANc0lzp1q.uu',
  :biography => "I'm Ikthedar."},
  {:username => 'aaron', :password_hash => '$2y$10$aHX62mTF.m1dJzzIg0wkpujCvZmKbEUsRr1sFnkIdANc0lzp1q.uu',
  :biography => "I'm Aaron."},
  {:username => 'ayodele', :password_hash => '$2y$10$aHX62mTF.m1dJzzIg0wkpujCvZmKbEUsRr1sFnkIdANc0lzp1q.uu',
  :biography => "I'm Ayodele."},
  
  # {:username => '', :password_hard => '', :biography => ''}
]

seed_users.each do |a| 
    User.create!(a)
end

def userId(userName) 
  return User.where("username = '#{userName}'").first.id
end

seed_ratings = Array[
  {:user_id => userId('dan'), :album_id => albumId('Run The Jewels 3'), :rating => 5},  
  {:user_id => userId('dan'), :album_id => albumId('Winter Forever'), :rating => 4},
  {:user_id => userId('ikthedar'), :album_id => albumId('Run The Jewels 3'), :rating => 2},
  {:user_id => userId('aaron'), :album_id => albumId('Winter Forever'), :rating => 3}
  
  # {:user_id => userId(''), :album_id => albumId(''), :rating => 0}
]

seed_users.each do |user|
  seed_albums.each do |album|
    a = {:user_id => userId(user[:username]), :album_id => albumId(album[:name]), :rating => rand(6)}
    Rating.create!(a)
  end
end


# seed_ratings.each do |a|
#   Rating.create!(a)
# end