class User < ApplicationRecord
  has_many :folders
  has_many :docs, through: :folders
end
