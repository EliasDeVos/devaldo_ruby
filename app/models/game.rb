class Game < ApplicationRecord
    has_many :messages
    has_many :attachments

    def name
        [homeTeam, awayTeam].join(' ')
    end
end
