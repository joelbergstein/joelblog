class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :blog, index: true, foreign_key: true
      t.string :author
      t.text :content

      t.timestamps null: false
    end
  end
end
