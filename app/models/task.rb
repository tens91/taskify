class Task < ApplicationRecord

    has_many :notes

    # Ensures that the following fields are present when the form is submitted
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
end
