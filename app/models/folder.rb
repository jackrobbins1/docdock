class Folder < ApplicationRecord
  belongs_to :user
  has_many :docs

<<<<<<< HEAD
  has_many :subfolders, class_name: "Folder", foreign_key: "parent_folder_id"
  belongs_to :parent_folder, class_name: "Folder", foreign_key: "parent_folder_id", optional: true
=======
  has_many :subfolders, :class_name => "Folder", :foreign_key => "parent_folder"
  belongs_to :parent_folder, :class_name => "Folder", :foreign_key => "parent_folder", optional: true
>>>>>>> master

end
