class Book < ApplicationRecord
    after_initialize :default_values
    has_many :reviews
    validates :title, presence: true, length: {minimum: 5}
    validates :author, presence: true, length: {minimum: 5}
    validates :publisher, presence: true, length: {minimum: 4}
    private def default_values
        self.rating = 0
    end
end
