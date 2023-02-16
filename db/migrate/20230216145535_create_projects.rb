class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string "name"
      t.string "content"
      t.string "homepage_images"
      t.string "showpage_images"
      t.string "date"

      t.timestamps
    end
  end
end
