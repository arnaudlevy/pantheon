class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.references :user, foreign_key: true
      t.references :personality, foreign_key: true
      t.integer :importance
      t.text :description

      t.timestamps
    end
  end
end
