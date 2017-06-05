class Attachment < ApplicationRecord
    mount_uploader :image, ImageUploader

    belongs_to :game, autosave: true
end
