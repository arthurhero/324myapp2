class Story < ApplicationRecord
    validates :author, presence: true,
        length: {minimum: 3, maximum: 30}
    validates :story, presence: true,
        length: {minimum: 20, maximum: 1000}
end
