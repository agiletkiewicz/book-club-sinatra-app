class User < ActiveRecord::Base

    validates :username, uniqueness: true
    validates :name, :username, :password, :bio, presence: true

    has_many :likes
    has_many :books, through: :likes

    has_secure_password 

end