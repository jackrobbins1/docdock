class AddParentFolderRefToFolder < ActiveRecord::Migration[5.2]
  def change
    add_reference :folders, :parent_folder, index: true
  end
end
