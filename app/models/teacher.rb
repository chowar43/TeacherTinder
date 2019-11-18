class Teacher < ApplicationRecord
    validates :name, presence: true, length: { minimum: 5 }
    validates :year, presence: true, length: { minimum: 5 }
end
