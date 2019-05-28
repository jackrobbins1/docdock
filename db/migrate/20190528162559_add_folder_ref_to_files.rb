class AddFolderRefToFiles < ActiveRecord::Migration[5.2]
  def change
    add_reference :files, :folder, foreign_key: true
  end
end
