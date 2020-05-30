module Findable #class method

    # when copied from the artist.rb and song.rb, the @@instance_array was replaced with "self.class.all" to abstract the idea
    #   without abstracting the class variable, the method would not run inside this module b/c the class variable wasn't definied in such method

    def find_by_name(name)
        self.all.detect{|a| a.name == name}
    end

end
