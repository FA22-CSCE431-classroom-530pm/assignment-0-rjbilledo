class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: false
    validates :price, presence: false
    validates :date, presence: false
end
