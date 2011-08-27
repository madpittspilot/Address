class State < ActiveRecord::Base
  belongs_to :country
  has_many :suburbs, :dependent => :destroy

  accepts_nested_attributes_for :suburbs, :reject_if => lambda { |a| a[:suburb].blank? }, :allow_destroy => true
#  attr_accessible :suburbs_attributes
  
  default_scope :order => "state"

end
