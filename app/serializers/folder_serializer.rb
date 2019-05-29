class FolderSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :description, :star
end
