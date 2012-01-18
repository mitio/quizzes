class Question < ActiveRecord::Base
  belongs_to :quiz

  validates_presence_of :title
  validates_uniqueness_of :title, scope: :quiz_id
  validates_numericality_of :position
end
