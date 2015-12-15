class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.timestamp :date
      t.string :autho
      t.text :content
      t.string :header_img

      t.timestamps null: false
    end
  end
end
