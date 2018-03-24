class Album < ActiveRecord::Base
    has_many :ratings
    has_many :tracks
end
