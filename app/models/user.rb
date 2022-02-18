class User < ApplicationRecord
  has_many :event_hists
  has_many :point_events
  has_many :referrals
  validates :user_id, presence: true
  validates :major, presence: true
  validates :admin, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
