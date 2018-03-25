class Album < ActiveRecord::Base
    has_many :ratings
    has_many :tracks
    belongs_to :artist
    belongs_to :genre
end
