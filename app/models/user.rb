class User < ActiveRecord::Base

    has_many :likes
    has_many :books, though: likes

    has_secure_password 

end