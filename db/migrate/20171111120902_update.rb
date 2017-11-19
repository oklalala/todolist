class Update < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :description, :note
    add_column :tasks, :checked, :boolean
  end
end
