class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :blogs, :autho, :author
  end
end
