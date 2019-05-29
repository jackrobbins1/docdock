class User < ApplicationRecord
  has_many :folders, dependent: :destroy
  has_many :docs, through: :folders
end
