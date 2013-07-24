class Question < ActiveRecord::Base
  attr_accessible :answer, :inquiry

  validates :inquiry, :presence => true
end
