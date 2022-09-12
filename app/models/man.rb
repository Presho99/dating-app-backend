class Man < ActiveRecord::Base
    has_many :matches
    has_many :womans, through: :matches

    def my_match
        self.matches.map do |match| 
            woman = Woman.find(match.woman_id)
           
            
        end
    end
end