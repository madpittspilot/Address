class Address < ActiveRecord::Base
    belongs_to :person
    belongs_to :suburb
    
    

  
#    accepts_nested_attributes_for :suburbs, :reject_if => lambda { |a| a[:suburb].blank? }
#    accepts_nested_attributes_for :people#, :reject_if => lambda { |a| a[:suburb].blank? }
end
