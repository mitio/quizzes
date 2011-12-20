class Question < ActiveRecord::Base
  belongs_to :quiz

  validates_presence_of :title
  validates_numericality_of :position
end
