# == Schema Information
#
# Table name: session_identifiers
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  authetication_token :integer
#  expires_at          :datetime
#

class SessionIdentifier < ActiveRecord::Base
  before_create :set_authentication_token
  before_create :set_expires_at



  def set_authentication_token
    loop do
      self.authentication_token =  "#{SecureRandom.uuid.gsub(/\-/,'')}#{Time.current.to_i}"
      break self.authentication_token unless SessionIdentifier.
          where(authentication_token: self.authentication_token).first
    end

  end


  def set_expires_at
    self.expires_at = Time.current + 30.days
  end


end
