class Excuse < ActiveRecord::Base
  belongs_to :beginning
  belongs_to :middle
  belongs_to :final

end