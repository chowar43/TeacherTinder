class Prof < ApplicationRecord
    def self.search(search)
        if search
            Prof.where('time LIKE ?', "%#{search}%")
        else
            Prof.all
        end
    end
end
