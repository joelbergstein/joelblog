class RemoveDateFromBlogs < ActiveRecord::Migration
  def change
  	remove_column :blogs, :date, :datetime
  end
end
