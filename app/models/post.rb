class Post < ApplicationRecord
    validates :Title, presence: true
    validates :body, presence: true, length: { minimum: 2 }
    validates :summary, presence: true
    
    def details
        "created on #{created_at.strftime("%d %M %Y")}"
    end
end
