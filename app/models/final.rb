class Final < ActiveRecord::Base

  has_many :excuses

  def self.sample_id
    Final.pluck(:id).sample
  end

end