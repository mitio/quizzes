class Quiz < ActiveRecord::Base
  has_many :questions

  validates_presence_of :name
  validates_uniqueness_of :name, :if => -> { name.present? }

  attr_accessible :name
end
