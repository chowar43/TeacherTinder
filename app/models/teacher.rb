class Teacher < ApplicationRecord
    belongs_to :year
    validates :name, presence: true, length: { minimum: 5 }
    validates :year, presence: true, length: { minimum: 5 }
    
    def self.search(search)
        if search
            year = Year.find_by(name: search)
            if year
                self.where(superpower_id: superpower)
            else
                Teacher.all
            end
        else
            Teacher.all
        end
    end
    
    private
    
    def teacher_params
        params.require(:teacher).permit(:name, :year, :time, :type, :credits, :style, :search)
    end
end
