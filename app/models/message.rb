class Message < ApplicationRecord
    belongs_to :game

    validates :message, presence: true
    validates :user, presence: true
end
