class Folder < ApplicationRecord
  belongs_to :user
  has_many :docs, dependent: :destroy

  has_many :subfolders, :class_name => "Folder", :foreign_key => "parent_folder"
  belongs_to :parent_folder, :class_name => "Folder", :foreign_key => "parent_folder", optional: true

end
