class Country < ActiveRecord::Base
  has_many :states, :dependent => :destroy

  accepts_nested_attributes_for :states, :reject_if => lambda { |a| a[:state].blank? }, :allow_destroy => true
#  attr_accessible :states_attributes
end
