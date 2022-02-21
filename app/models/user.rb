class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :event_hists
  has_many :point_events
  has_many :referrals
  validates :uid, presence: true
  validates :major, presence: true
  validates :admin, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  devise :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_google(email:, first_name:, last_name:, uid:, avatar_url:)
    return nil unless email =~ /@gmail.com || @tamu.edu\z/
    create_with(uid: uid, first_name: first_name, last_name:last_name, avatar_url: avatar_url).find_or_create_by!(email: email)
  end
end
