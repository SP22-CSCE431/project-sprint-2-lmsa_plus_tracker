class AdminsController < ApplicationController
  def self.from_google(email:, full_name:, uid:, avatar_url:)
    return nil unless email =~ /@mybusiness.com\z/
    create_with(uid: uid, full_name: full_name, avatar_url: avatar_url).find_or_create_by!(email: email)
  end