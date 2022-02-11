class User < ApplicationRecord
    has_many :event_hists
    has_many :point_events
    has_many :referrals
end
