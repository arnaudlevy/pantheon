class CreatePersonalities < ActiveRecord::Migration[5.2]
  def change
    create_table :personalities do |t|
      t.string :first_name
      t.string :last_name
      t.string :name
      t.string :wikipedia_url
      t.string :photo

      t.timestamps
    end
  end
end
