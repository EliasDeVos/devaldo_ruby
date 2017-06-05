class Game < ApplicationRecord
    has_many :message
    has_many :attachment 

    def name
        [homeTeam, awayTeam].join(' ')
    end
end
