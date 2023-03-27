class Movie < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
end
