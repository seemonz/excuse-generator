class Excuse < ActiveRecord::Base
  
  belongs_to :beginning
  belongs_to :middle
  belongs_to :final
  has_many :upvotes

  scope :get_random_excuses, -> { offset(rand(self.count)).first(5) }

  # attr_reader :upvote_count

  # def upvote_count
  #   self.upvote.size
  # end

  def beginning
    Beginning.find(beginnings_id)
  end

  def middle
    Middle.find(middles_id)
  end

  def final
    Final.find(finals_id)
  end


  def increment_upvote
    self.upvote_count += 1
  end

end