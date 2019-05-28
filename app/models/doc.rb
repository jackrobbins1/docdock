class Doc < ApplicationRecord
  belongs_to :folder
  belongs_to :user, through: :folder
end
