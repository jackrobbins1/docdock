class AddFolderRefToDocs < ActiveRecord::Migration[5.2]
  def change
    add_reference :docs, :folder, foreign_key: true
  end
end
