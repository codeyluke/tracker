class User < ApplicationRecord
  include Clearance::User
  enum role: [:sales, :admin]

  after_initialize do 
    if self.new_record? 
      self.role ||= :sales 
    end
  end
end
