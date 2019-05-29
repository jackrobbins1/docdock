class DocsSerializer < ActiveModel::Serializer
  attributes :id, :name, :site_url, :picture_url, :notes, :gists
end
