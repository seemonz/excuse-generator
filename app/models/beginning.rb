class Beginning < ActiveRecord::Base
  
  has_many :excuses

  def self.sample_id
    Beginning.pluck(:id).sample
  end

end