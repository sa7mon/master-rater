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
    {:name => 'Manchester Orchestra'},
    {:name => 'Ratatat'},
    {:name => 'Andrew Jackson Jihad'},
    {:name => 'Adventures'},
    {:name => 'American Football'},
    {:name => 'Arcade Fire'},
    {:name => 'Beastie Boys'},
    {:name => 'Bill Withers'},
    {:name => 'Run the Jewels'},
    {:name => 'Modern Baseball'},
    {:name => 'Neutral Milk Hotel'},
    {:name => 'Old Gray'},
    {:name => 'Pianos Become The Teeth'},
    {:name => 'Radiator Hospital'},
    {:name => 'Right Away, Great Captain'},
    {:name => 'The World is a Beautiful Place and I am No Longer
              Afraid to Die'}, 
    {:name => 'Tiny Moving Parts'},
    {:name => 'Hostage Calm'}
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
  :artist_id => artistId('Run the Jewels'), :genre_id => genreId('Rap')},
  
  {:name => 'Winter Forever', :release_date => '08-11-2011', 
  :label => 'Run For Cover Records', :total_time => '00:37:16', 
  :artist_id => artistId('Seahaven'), :genre_id => genreId('Pop Rock')},
  
  {:name => 'Charmer', :release_date => '30-05-2014', 
  :label => 'Run For Cover Records', :total_time => '00:38:01', 
  :artist_id => artistId('Tigers Jaw'), :genre_id => genreId('Indie Rock')},

  {:name => 'This Couch Is Long & Full of Friendship', :release_date => '27-05-2013', 
  :label => 'Kind of Like Records', :total_time => '00:26:25', 
  :artist_id => artistId('Tiny Moving Parts'), :genre_id => genreId('Emo')},

  {:name => 'In the Aeroplane Over the Sea', :release_date => '20-01-1998', 
  :label => 'Merge Records', :total_time => '00:39:54', 
  :artist_id => artistId('Neutral Milk Hotel'), :genre_id => genreId('Fuzz Folk')},
  
  {:name => 'Empty Days and Sleepless Nights', :release_date => '08-03-2011', 
  :label => 'Bridge Nine Records', :total_time => '00:49:12', 
  :artist_id => artistId('Defeater'), :genre_id => genreId('Hardcore')},
  
  {:name => 'People Who Can Eat People', :release_date => '11-09-2007', 
  :label => 'Asian Man Records', :total_time => '00:25:12', 
  :artist_id => artistId('Neutral Milk Hotel'), :genre_id => genreId('Folk Punk')}
  
  # {:name => '', :release_date => '', :label => '', :total_time => '', 
  # :artist_id => artistId(''), :genre_id => genreId('')}
]

seed_albums.each do |a|
  Album.create!(a)
end

def albumId(albumName)
  return Album.where("name = '#{albumName}'").first.id
end

seed_tracks = Array[
  {:name => 'Down', :album_id => albumId('Run The Jewels 3'), :duration => '3:30', :album_order => '1'},  
  {:name => 'Talk To Me', :album_id => albumId('Run The Jewels 3'), :duration => '2:31', :album_order => '2'},  
  {:name => 'Legend Has It', :album_id => albumId('Run The Jewels 3'), :duration => '3:26', :album_order => '3'},  
  {:name => 'Call Ticketron', :album_id => albumId('Run The Jewels 3'), :duration => '3:19', :album_order => '4'},  
  {:name => 'Hey Kids', :album_id => albumId('Run The Jewels 3'), :duration => '3:12', :album_order => '5'},  
  {:name => 'Stay Gold', :album_id => albumId('Run The Jewels 3'), :duration => '3:28', :album_order => '6'},  
  {:name => "Don't Get Captured", :album_id => albumId('Run The Jewels 3'), :duration => '3:12', :album_order => '7'},  
  {:name => 'Thieves!', :album_id => albumId('Run The Jewels 3'), :duration => '4:02', :album_order => '8'},  
  {:name => '2100', :album_id => albumId('Run The Jewels 3'), :duration => '4:01', :album_order => '9'},  
  {:name => 'Panther Like a Panther (Miracle Mix)', :album_id => albumId('Run The Jewels 3'), :duration => '3:41', :album_order => '10'},  
  {:name => 'Everybody Stay Calm', :album_id => albumId('Run The Jewels 3'), :duration => '2:59', :album_order => '11'},  
  {:name => 'Oh Mama', :album_id => albumId('Run The Jewels 3'), :duration => '3:37', :album_order => '12'},  
  {:name => 'Thursday in the Danger Room', :album_id => albumId('Run The Jewels 3'), :duration => '4:23', :album_order => '13'},  
  {:name => 'A Report to the Shareholders / Kill Your Masters', :album_id => albumId('Run The Jewels 3'), :duration => '6:15', :album_order => '14'},  
  
  # {:name => '', :album_id => albumId(''), :duration => '', :album_order => ''},  
]

seed_tracks.each do |a|
  Track.create!(a)
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
  {:user_id => userId('aaron'), :album_id => albumId('Winter Forever'), :rating => 3},
]

seed_ratings.each do |a|
  Rating.create!(a)
end