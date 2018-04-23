# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seed_artists = [
    {:name => 'Tigers Jaw',
      :biography => "A band whose music has matured from pop-punk to emo to indie rock, Tigers Jaw have earned a growing following for their melodic but insistent music and emotionally powerful lyrics. 
      Tigers Jaw were formed in 2005 in Scranton, Pennsylvania by guitarist and vocalist Adam McIlwee and guitarist and vocalist Ben Walsh. The two began working up material and recruited bassist Dennis Mishko and drummer Mike May; a keyboard player dropped out before the group's first show, 
      and through mutual friends, Brianna Collins was invited to join the lineup. Several months later, Mike May left the band, and Pat Brier took over on drums, solidifying the band's membership. In 2006, Tigers Jaw recorded their first album, Belongs to the Dead, on a portable recording rig 
      in an attic where the band rehearsed; the album was released by Summersteps Records, and in 2008, they went into the studio with producer and engineer Joe Loftus to cut their second full-length, simply titled Tigers Jaw, for Photobooth Records. Tigers Jaw's popularity began to spread, despite the group's touring opportunities being limited by the members' academic commitments, and in 2010, 
      they signed with Run for Cover Records, which brought out their third album, Two Worlds. (Run for Cover would also reissue the band's first two albums.) A split EP with the group Balance & Composure was also released the same year, and Tigers Jaw would release split singles with like-minded bands the Sidekicks, Tiny Empires, and Code Orange over the next few years. "
    },
    {:name => 'Defeater',
      :biography => "Boston, Massachusetts hardcore group Defeater originally formed in 2004, and, after some lineup changes, eventually landed on vocalist Derek Archambault, guitarists Jay Maas and Jake Woodruff, bassist Mike Poulin, and drummer Joe Longobardi by 2008. Conceptually-inclined from the very beginning, their debut album, Travels (2008), introduced a narrative which chronicled an unnamed, post-WWII
      working-class family and their complicated, dysfunctional relationships. Initially signed to Topshelf, Defeater moved to Bridge Nine Records to release their next two LPs, Empty Days & Sleepless Nights (2011) and Letters Home (2013), each of which provided a new chapter in the fictional family's overarching storyline. In 2015, the band signed with Epitaph Records to release their fourth album, Abandoned."
    },
    {:name => 'La Dispute',
     :biography => 'La Dispute is four close friends from the Upper Midwest with a firm passion for the concept of music and art as a medium for making new friends. As a result, La Dispute makes (or strives to make) music that is both artistically, technically, and emotionally engaging in hopes of establishing legitimate connections with any and all interested people, while encouraging dialogue between those people and themselves about things in life that truly matter and that truly last. 
     La Dispute also carries a firm passion for the relevance of a live show, both for the bands involved and for the people in attendance, and will go to the grave believing that the environment created when strangers come together despite their differences to celebrate one important thing is invaluable and should not under any circumstances be taken for granted.'
    },
    {:name => 'Camp Cope',
      :biography => "As a regular of the Australian singer/songwriter circuit and with a handful of solo singles under her belt, Melbourne native Georgia Maq decided to bring together Kelly Hellmrich on bass and Sarah Thompson on drums to flesh out her solo project. With Camp Cope's 
      angst-ridden sound sitting between the confessional folk-punk of fellow Melbourner Wil Wagner and the lo-fi pop-punk of Alabama's P.S. Eliot, the band secured themselves support slots with the likes of the Hotelier, Andrew Jackson Jihad, and Waxahatchee, as well as playing their own headline shows. Wasting no time, the trio entered the studio and by the end of the year had recorded their debut album with Sam Johnson (the Smith Street Band, the Bennies). Released on Poison City in April 2016, their eight-track self-titled debut earned them critical acclaim for its 
      confessional storytelling and entered the ARIA albums chart at number 36. After a successful joint tour of Australia at the end of 2016 with Philadelphia's Cayetana, Poison City issued a limited split single that featured new material by both bands. 2017 saw the group on tour once again, with two sold-out shows at the Sydney Opera House, as well as select U.S. dates. At the end of the year, they returned to the studio to record their sophomore album. The resulting How to Socialise & Make Friends was issued in early 2018 on Poison City and Run for Cover."
    },
    {:name => 'Seahaven',
      :biography => "With a sound that blends the emotional narratives of post-hardcore and emo with the sense of space and dynamics of post-rock, Seahaven are a band forging their own path through the genre's increasingly homogeneous waters. Based out of Torrance, California, Seahaven have built a sound for themselves that seeks to surprise the listener at every turn, often turning on a dime as it shifts from drifting atmospherics to driving punk. Seahaven unveiled their sound in 2010 with the release of their Ghost EP, and followed up the next year with their full-length debut, Winter Forever. After hitting the road with Touché Amore, the band got to work on its sophomore full-length, reaching a new creative high point with the release of Reverie Lagoon: Music for Escapism Only in 2014."
    },
    # {:name => 'Manchester Orchestra'},
    {:name => 'Ratatat',
      :biography => "Formerly known as Cherry, New York's rock-meets-electronica duo Ratatat feature multi-instrumentalist/programmer Evan Mast and guitarist Mike Stroud. Mast was also the brains behind the pretty laptop pop of E*vax, and with his brother E*Rock he ran the indie electronic label Audio Dregs. Stroud also played, in the studio and on tour, with artists including Ben Kweller and Dashboard Confessional. Between these duties (and Mast's job as a graphic designer), the duo found time to work on their collaboration. In his bedroom studio, Mast worked on beats and song ideas that he gave to Stroud to develop while the guitarist was on the road. Though Mast and Stroud began working together in 2001, things really began to come together for the pair in 2003: in May, while they were still called Cherry, they played their first gig; by September they changed their name to Ratatat; and that November they issued their first single, which had a limited run of 1,100 copies, on Audio Dregs. Dates with Franz Ferdinand, Interpol, and Battles followed, and Ratatat signed to XL Records. The duo's self-titled debut album arrived in spring 2004, coinciding with another round of dates with bands including !!!, Electrelane, and Tortoise. "
    },
    {:name => 'Andrew Jackson Jihad',
      :biography => "Comprising core members Sean Bonnette (acoustic guitar) and Ben Gallaty (upright bass), Andrew Jackson Jihad, aka AJJ, is a folk-punk outfit from Phoenix, Arizona. The Jihad formed in 2004, when frontman Bonnette was still a teenager, and the duo quickly began writing humorously explicit music with macabre themes. Early topics ran the gamut from self-sacrifice to childhood drug addiction, all sung in a frantic manner with acoustic instrumentation. Their self-released debut, Candy Cigarettes & Cap Guns, appeared in 2005, after which a number of self-released demos and EPs attracted the attention of Plan-It-X Records. The label issued a split release with Andrew Jackson Jihad and the similarly styled Ghost Mice in 2007. "
    },
    # {:name => 'Adventures'},
    {:name => 'American Football',
      :biography => "American Football comprise vocalist/bassist/guitarist Mike Kinsella, guitarist Steve Holmes, and drummer/trumpet player Steve Lamos. Kinsella's emo/post-rock pedigree includes stints with bands like Cap'n Jazz and Joan of Arc; American Football share a similar aesthetic, blending jazzy tempos, pop hooks, and earnest vocals into their sound. The group released its self-titled debut EP in 1998 and its eponymous full-length in 1999 before abruptly breaking up after only a few years of existence. Kinsella went on to perform solo as Owen, as well as with his brother Tim in the equally elusive rock group Owls. American Football's legacy would grow following their dissolution, with new fans discovering their album as it went through various re-pressings over the years. "
    },
    {:name => 'Arcade Fire',
      :biography => "A combination of indie rock muscle and theatrical, unapologetic bombast turned Arcade Fire into indie royalty in the early 2000s. Originally comprised of Régine Chassagne, Richard Parry, Tim Kingsbury, and brothers William and Win Butler, the group formed during the summer of 2003, after Win spotted Chassagne singing jazz standards at a Montreal art exhibit. The grandson of famed swing-era bandleader Alvino Rey, Win was quickly charmed by Chassagne's performance, leading the two to launch a songwriting partnership. Romance followed shortly thereafter, and the duo expanded its sound by gathering Parry on organ, Kingsbury on bass, and Win Butler's younger brother, William, on synthesizer and percussion. Drawing from the bandmates' varied influences, Arcade Fire began mining an eclectic mix of bossa nova, punk, French chanson, and classically tinged pop music, referencing everything from U2's passion to David Bowie's eclecticism in the process. "
    },
    # {:name => 'Beastie Boys'},
    {:name => 'Bill Withers',
      :biography => 'Songwriter/singer/guitarist Bill Withers is best remembered for the classic "Lean on Me" and his other million-selling singles "Ain\'t No Sunshine" and "Use Me," but he has a sizable cache of great songs to his credit. Al Jarreau recorded an entire CD of Withers\' songs on Tribute to Bill Withers (Culture Press 1998). His popular radio-aired LP track from Still Bill, "Who Is He? (And What Is He to You?)," was a 1974 R&B hit for Creative Source. '
    },
    {:name => 'Run the Jewels',
      :biography => "A one-off project that quickly evolved into a hip-hop superduo, Run the Jewels feature rappers El-P and Killer Mike. Formed after El-P produced Killer Mike's 2012 album, R.A.P. Music, the duo released Run the Jewels in 2013, an album credited to Killer Mike and El-P and released on Fool's Gold. Critically popular and with a sizable fan base to boot, Run the Jewels quickly evolved into a going concern when their sophomore effort, RTJ2, landed in 2014. A crowdfunded remix version of the album with all the music replaced by samples of cats was released in 2015 as Meow the Jewels. It featured guest appearances from Portishead's Geoff Barrow, Dan the Automator, and Internet sensation Lil Bub. The group ended the year with the single \"Rubble Kings (Dynamite on the Street),\" released by the Adult Swim label. In 2016, the duo announced RTJ3, which was set for release in early 2017. However, on Christmas Eve 2016, they unexpectedly uploaded the album as another free download. Featuring appearances by Joi, Trina, Boots, Danny Brown, Tunde Adebimpe, Kamasi Washington, and the return of Zack de la Rocha, RTJ3 debuted in the Billboard Top 40 and at number eight on the R&B/hip-hop chart. "
    },
    # {:name => 'Modern Baseball'},
    {:name => 'Neutral Milk Hotel',
      :biography => "The self-described \"fuzz-folk\" project Neutral Milk Hotel was one of the primary outgrowths of the Elephant 6 Recording Company collective, a coterie of like-minded lo-fi indie groups -- including the Apples in Stereo, the Olivia Tremor Control, and Secret Square -- who shared musicians, ideas, and sensibilities. While ranging in sound and concept from solo acoustic work to full-band performances, Neutral Milk Hotel essentially remained the work of Jeff Mangum, a singer/songwriter from the remote town of Ruston, Louisiana. Ruston was also home to Robert Schneider (later of the Apples), as well as Will Cullen Hart and Bill Doss (who formed the Olivia Tremor Control); throughout high school, the aspiring musicians -- all influenced by the likes of the Beatles, the Beach Boys, the Zombies, Pink Floyd, and Sonic Youth -- exchanged home recordings and played in each other's bands. "
    },
    # {:name => 'Old Gray'},
    # {:name => 'Pianos Become The Teeth'},
    # {:name => 'Radiator Hospital'},
    {:name => 'Right Away, Great Captain!',
      :biography => "Right Away, Great Captain! is the solo side project of Manchester Orchestra's lead singer, Andy Hull. Debut album The Bitter End was released on January 14, 2007 via Favorite Gentlemen Recordings and is available on the band's MySpace. The follow-up, The Eventually Home, was released on Tuesday November 11, 2008, also on Hull's label Favorite Gentlemen Recordings. On Wednesday, February 10, 2010, he announced the third and final installment of his solo project's trilogy, The Church of the Good Thief, which was released in 2012."
    },
    # {:name => 'The World is a Beautiful Place and I am No Longer
              # Afraid to Die'}, 
    {:name => 'Tiny Moving Parts',
      :biography => "Based out of Benson, Minnesota, emotionally charged screamo/math rock unit Tiny Moving Parts was formed around the talents of Dylan Mattheisen, William Chevalier, and Matthew Chevalier while the trio was still in high school. The band issued its debut EP, Moving to Antarctica, in 2010, followed by the Kind of Like Records-issued full-length This Couch Is Long & Full in 2013. The trio inked a deal with Triple Crown the following year and released their sophomore long-player Pleasant Living. Returning to the studio with This Couch Is Long producer Greg Lindholm, the trio set about recording their third album, Celebrate. Slated for a mid-2016 release, the album would be their second release for Triple Crown and their debut for U.K. label Big Scary Monsters. Tiny Moving Parts returned in 2018 with their fourth record Swell, which was announced with the release of lead single \"Caution.\""
    },
    {:name => 'Månegarm',
      :biography => "Månegarm is a Swedish Viking/black metal band from Norrtälje. The band's name is derived from Mánagarmr, a wolf in Norse mythology."
    },
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
  {:name => 'Electronic'},
  {:name => 'Viking Metal'}
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
  
  {:name => 'Legions Of The North', :release_date => '26-06-2013', 
  :label => 'Napalm Records', :total_time => '00:50:42', 
  :artist_id => artistId('Månegarm'), :genre_id => genreId('Viking Metal'),
  :musicbrainz_id => '78f9009c-a737-471c-bba9-8b54aeae9bd9'},
  
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
  :musicbrainz_id => '9de445cf-865e-4d3c-8c66-c1ae052ea99c'},
  
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
  
  {:name => 'Swell', :release_date => '26-01-2018', 
  :label => 'Triple Crown Records', :total_time => '00:31:57', 
  :artist_id => artistId('Tiny Moving Parts'), :genre_id => genreId('Emo'),
  :musicbrainz_id => '0b25ecd8-7a76-43a6-b86b-db7b8fc74665'},

  
  # {:name => '', :release_date => '', :label => '', :total_time => '', 
  # :artist_id => artistId(''), :genre_id => genreId('')}
]

seed_albums.each do |a|
  randDate = DateTime.now - (rand * 365) 
  a[:updated_at] = randDate
  Album.create!(a)
end

def albumId(albumName)
  return Album.where("name = '#{albumName}'").first.id
end


seed_albumraters = Array[
  # {:provider => "twitter", :nickname => "@bltjetpack", :uid => 3154330044, 
  # :description => "Hi I'm @bltjetpack", :image => "https://pbs.twimg.com/profile_images/671043988489539584/eel_irZJ_normal.jpg"},
  {:provider => "twitter", :nickname => "@jack", :uid => 12, 
  :description => "Hi I'm @jack", :image => "https://pbs.twimg.com/profile_images/839863609345794048/mkpdB9Tf_normal.jpg"},
  {:provider => "twitter", :nickname => "@chrissyteigen", :uid => 39364684, 
  :description => "Hi I'm @chrissyteigen", :image => "https://pbs.twimg.com/profile_images/680889019073454080/GMxn5fuf_normal.jpg"},
  {:provider => "twitter", :nickname => "@achillean", :uid => 9442352, 
  :description => "Hi I'm @achillean", :image => "https://pbs.twimg.com/profile_images/620062308199305217/zgATSVw8_normal.jpg"},
  {:provider => "twitter", :nickname => "@troyhunt", :uid => 14414286,
  :description => "Hi I'm @troyhunt", :image => "https://pbs.twimg.com/profile_images/1154092629/Square__small__400x400.jpg"}

]

seed_albumraters.each do |a| 
    Albumrater.create!(a)
end

def albumRaterId(nickname)
  return Albumrater.where("nickname = '#{nickname}'").first.id
end

seed_ratings = Array[
  {:albumrater_id => albumRaterId('@troyhunt'), :album_id => albumId('Run The Jewels 3'), :rating => 5},  
  {:albumrater_id => albumRaterId('@troyhunt'), :album_id => albumId('American Football'), :rating => 1}, 
  {:albumrater_id => albumRaterId('@troyhunt'), :album_id => albumId('Wildlife'), :rating => 2}, 
  {:albumrater_id => albumRaterId('@jack'), :album_id => albumId('Winter Forever'), :rating => 4},
  {:albumrater_id => albumRaterId('@achillean'), :album_id => albumId('Run The Jewels 3'), :rating => 2},
  {:albumrater_id => albumRaterId('@chrissyteigen'), :album_id => albumId('Winter Forever'), :rating => 3}
]

# seed_users.each do |user|
#   seed_albums.each do |album|
#     a = {:user_id => userId(user[:username]), :album_id => albumId(album[:name]), :rating => rand(6)}
#     Rating.create!(a)
#   end
# end

seed_ratings.each do |a|
  randDate = DateTime.now - (rand * 365)   # Multiple by the maximum number of days ago you want
  a[:updated_at] = randDate
  
  Rating.create!(a)
end