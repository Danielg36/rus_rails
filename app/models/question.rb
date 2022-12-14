class Question < ApplicationRecord
    has_many :answers
    validates :title, presence: true, length: {minimum: 3}
    validates :body, presence: true, length: {minimum: 3}

    def formated_created_at
        created_at.strftime('%Y-%m-%d %H:%M:%S')
    end


end
