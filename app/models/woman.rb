class Woman < ActiveRecord::Base
    has_many :matches
    has_many :men, through: :matches
    
    

end