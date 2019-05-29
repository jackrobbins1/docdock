class Doc < ApplicationRecord
  belongs_to :folder, optional: true
  belongs_to :user, optional: true
end
