class Man < ActiveRecord::Base
    has_many :matches
    has_many :womans, through: :matches
    
    

end