class AddDescriptionToPersonality < ActiveRecord::Migration[5.2]
  def change
    add_column :personalities, :description, :text
  end
end
