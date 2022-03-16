class Category < ApplicationRecord
    validates_presence_of :title, :url
    has_many :posts 

    def total 
        post.count
    end
end
