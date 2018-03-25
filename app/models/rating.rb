class Rating < ActiveRecord::Base
    belongs_to :album
    has_one :user
    has_one :album
    belongs_to :user
    belongs_to :album
end
