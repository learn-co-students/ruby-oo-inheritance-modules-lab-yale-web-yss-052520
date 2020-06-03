module Findable

    def find_by_name(name)
        all.find(&:name)
    end
end