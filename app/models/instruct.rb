class Instruct < ApplicationRecord
    def self.search(search)
        if search
            Instruct.where('category LIKE ?', "%#{search}%")
        else
            Instruct.all
        end
    end
end
