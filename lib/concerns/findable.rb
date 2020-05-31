module Findable
    # Defines the class method find_by_name (like searching through a database)
    # Omit self keyword even though it is a class method - extends keyword will handle it
    def find_by_name(name)
        # Remember, we can't use any class variables specific to a class. This must be a general solution.
        self.all.detect {|x| x.name == name}
    end 
end 