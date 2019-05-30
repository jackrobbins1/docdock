class FolderSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :docs
  attributes :id, :name, :picture, :star, :description
end
