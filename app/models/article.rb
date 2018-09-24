class Article<ActiveRecord::Base 
    
    validates :tittle, presence:true, length: {minimum:5, maximum:10}
    validates :description, presence:true, length: {minimum:3, maximum: 15}
    validates :reason, presence:true, length: {minimum: 5, maximum: 20}
    
end 
