class Genre < ActiveRecord::Base
    has_many :albums
    belongs_to :album
end
