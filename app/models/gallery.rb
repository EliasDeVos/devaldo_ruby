class Gallery < ApplicationRecord
    mount_uploader :image, ImageUploader
end
