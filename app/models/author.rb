class Author < ApplicationRecord
    validates :name, presence: true,length: {maximum: 50}
    validates :email, presence: true , format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :DOB ,  presence: true
    validates :phone_number, presence: true 
end
