class Woman < ActiveRecord::Base
    has_many :matches
    has_many :men, through: :matches

    def my_match
        self.matches.map do |match| 
            man = Man.find(match.man_id)
           
        end
    end
end