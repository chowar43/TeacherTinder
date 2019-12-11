class Teacher < ApplicationRecord
    #belongs_to :year
    validates :name, presence: true, length: { minimum: 5 }
    validates :year, presence: true, length: { minimum: 5 }
    
    def self.search(search)
        if search
            student_year = Teacher.find_by(year: search)
            if student_year
                self.where(year: student_year)
            else
                Teacher.all
            end
        else
            Teacher.all
        end
    end
    
end
