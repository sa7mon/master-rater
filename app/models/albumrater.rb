class Albumrater < ActiveRecord::Base
    has_many :ratings
    belongs_to :rating
end
