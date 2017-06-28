class CreateUsagers < ActiveRecord::Migration
  def change
    create_table :usagers do |t|
      t.string :courriel
      t.string :nom
      t.string :motPasse
      t.string :role

      t.timestamps 
    end
  end
end
