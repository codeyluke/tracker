class User < ApplicationRecord
  include Clearance::User
  enum role: [:sales, :admin]
  has_many :authentications, dependent: :destroy
  has_many :leads
  has_many :engages

  def self.create_with_auth_and_hash(authentication, auth_hash)
    user = self.create!(
      first_name: auth_hash["info"]["first_name"],
      last_name: auth_hash["info"]["last_name"],
      email: auth_hash["info"]["email"],
      password: SecureRandom.hex(10)
    )
    user.authentications << authentication
    return user
  end
 
  # grab google to access google for user data
  def google_token
    x = self.authentications.find_by(provider: 'google_oauth2')
    return x.token unless x.nil?
  end

  after_initialize do 
    if self.new_record? 
      self.role ||= :sales 
    end
  end
end
