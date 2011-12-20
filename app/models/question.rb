class Question < ActiveRecord::Base
  validates_presence_of :title
  validates_numericality_of :position
end
