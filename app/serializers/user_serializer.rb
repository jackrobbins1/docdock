class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :folders
  has_many :docs, through: :folders
end
