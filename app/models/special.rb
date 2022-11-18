class Special < ApplicationRecord
    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :restaurantName, presence: true, length: {minimum: 2, maximum: 50}
end
