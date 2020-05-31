module Memorable
    module ClassMethods
        # We will define the reset_all and count class methods within this module
        def reset_all
            self.all.clear
        end 

        def count
            self.all.size
        end
    end 

    module InstanceMethods
        # Initialize method keeps track of new instances - belongs in memorable
        # However, initialize is an INSTANCE METHOD. We will need nested modules.
        def initialize
            self.class.all << self 
        end 
    end    
end 