class AddActiveToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :active, :boolean, default: true
  end
end
