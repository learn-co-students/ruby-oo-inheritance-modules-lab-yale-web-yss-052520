module Paramable #instance methods
    def to_param
        name.downcase.gsub(' ', '-')
      end
end
