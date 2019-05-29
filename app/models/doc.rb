class Doc < ApplicationRecord
  belongs_to :folder
  belongs_to :user, optional: true
end
