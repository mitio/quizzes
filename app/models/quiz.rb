class Quiz < ActiveRecord::Base
  has_many :questions

  validates_presence_of :name
  validates_uniqueness_of :name, :if => -> { name.present? }

  attr_accessible :name

  scope :ordered, order('id ASC')
  scope :approved, where(['id > ?', 3])
end
