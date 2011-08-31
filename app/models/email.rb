class Email < ActiveRecord::Base
#    attr_accessible :email
    belongs_to :person
    belongs_to :location
    
    default_scope :order => "location_id"
end
