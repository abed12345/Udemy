class Post < ApplicationRecord
    validates :Title, presence: true
    validates :body, presence: true, length: { minimum: 2 }
    validates :summary, presence: true
    
   belongs_to :category

   after_create :update_total_posts_count

   private

   def update_total_posts_count

    category.increment(:total_count, 1)
    
    end
end
