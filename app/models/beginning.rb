class Beginning < ActiveRecord::Base
  
  has_many :excuses

  scope :get_phrase, ->(category) { (where("category = ?", category)).sample }

end