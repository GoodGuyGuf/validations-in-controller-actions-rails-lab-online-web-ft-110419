class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 100}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "The only categories are Fiction and Non-Fiction." } 
end
