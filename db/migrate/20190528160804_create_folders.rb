class CreateFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :folders do |t|
      t.string :name
      t.string :picture
      t.boolean :star
      t.string :description

      t.timestamps
    end
  end
end
