class DocSerializer < ActiveModel::Serializer
  belongs_to :folder
  belongs_to :user
  attributes :id, :name, :site_url, :picture_url, :notes, :gists
end
