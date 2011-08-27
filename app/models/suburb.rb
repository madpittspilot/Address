class Suburb < ActiveRecord::Base
    has_many :addresses, :dependent => :destroy
    has_many :people, :through => :addresses
    belongs_to :state
    
#    default_scope :order => "suburb"
    
    def suburb_and_state
      if state_id.to_i > 0          # if it is zero then the state_id was blank or nil
        this_state = State.find(state_id)
        "#{suburb}, #{this_state.state}"
      else
        "#{suburb}, No State"
      end
    end

      
  #  accepts_nested_attributes_for :people, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true    
  #  accepts_nested_attributes_for :addresses, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
