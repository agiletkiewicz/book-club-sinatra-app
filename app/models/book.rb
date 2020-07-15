class Book < ActiveRecord::Base

    has_many :likes

    has_many :users, through: :likes

end
