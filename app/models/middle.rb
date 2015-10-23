class Middle < ActiveRecord::Base

  has_many :excuses
  
  scope :get_phrase, -> { offset(rand(self.count)).first }

end