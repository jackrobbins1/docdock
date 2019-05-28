class CreateDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :docs do |t|
      t.string :name
      t.string :site_url
      t.string :picture_url
      t.string :notes
      t.string :gists
      t.boolean :star

      t.timestamps
    end
  end
end
