class PostEmoji < ApplicationRecord
  belongs_to :emoji
  belongs_to :post
end
