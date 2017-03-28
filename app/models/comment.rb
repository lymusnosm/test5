class Comment < ApplicationRecord
  belongs_to :truyen
  belongs_to :user
end
