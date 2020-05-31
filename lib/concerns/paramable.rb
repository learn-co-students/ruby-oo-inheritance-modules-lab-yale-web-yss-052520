module Paramable
    # This type of method generally used in web development to create a "param" out of an instance so you can create unique URLS
    def to_param
        name.downcase.gsub(' ', '-')
    end
end