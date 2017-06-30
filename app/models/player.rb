class Player < ApplicationRecord
    mount_uploader :image, ImageUploader

    def name
        [first_name, last_name].join(' ')
    end
end
