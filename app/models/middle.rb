class Middle < ActiveRecord::Base

  has_many :excuses
  
  def self.sample_id
    Middle.pluck(:id).sample
  end

end