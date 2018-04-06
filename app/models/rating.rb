class Rating < ActiveRecord::Base
    belongs_to :album
    has_one :albumrater
    has_one :album
    belongs_to :user
    belongs_to :albumrater
    belongs_to :album
end
