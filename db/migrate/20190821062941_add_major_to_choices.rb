class AddMajorToChoices < ActiveRecord::Migration[5.2]
  def change
    remove_column :choices, :importance, :integer
    add_column :choices, :major, :boolean, default: false
  end
end
