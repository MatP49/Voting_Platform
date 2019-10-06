class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :axis
      t.integer :score

      t.timestamps
    end
  end
end
