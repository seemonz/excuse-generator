class Excuse < ActiveRecord::Base
  
  belongs_to :beginning
  belongs_to :middle
  belongs_to :final
  has_many :upvotes

  def upvote_count
    self.upvote.size
  end

  # def top_five
  #   self.first(5)
  # end

end