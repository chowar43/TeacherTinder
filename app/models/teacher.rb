class Teacher < ApplicationRecord
    #belongs_to :year
    validates :name, presence: true, length: { minimum: 5 }
    validates :year, presence: true, length: { minimum: 5 }
    
    def self.search(search)
        if search
            Teacher.where('year LIKE ?', "%#{search}%")
        else
            Teacher.all
        end
    end
    
end
