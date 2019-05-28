class Folder < ApplicationRecord
  belongs_to :user
  has_many :docs

  has_many :subfolders, class_name: "Folder", foreign_key: "parent_folder_id"
  belongs_to :parent_folder, class_name: "Folder", foreign_key: "parent_folder_id", optional: true


end
