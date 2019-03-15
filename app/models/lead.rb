class Lead < ApplicationRecord
  belongs_to :user
  enum status: [:fp, :fu, :bs, :ros, :closed] 
  has_one :engage
  
  after_initialize do 
    if self.new_record? 
      self.status ||= :fp
    end
  end
end
