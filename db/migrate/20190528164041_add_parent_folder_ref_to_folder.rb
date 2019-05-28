class AddParentFolderRefToFolder < ActiveRecord::Migration[5.2]
  def change
    add_reference :folders, :parent_folder, foreign_key: true
  end
end
