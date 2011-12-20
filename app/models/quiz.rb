class Quiz < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :if => -> { name.present? }
end
