class CreateOrganismes < ActiveRecord::Migration
  def change
    create_table :organismes do |t|
      t.string :nom
      t.string :adresse
      t.string :telephone
      t.string :courriel

      t.timestamps null: false
    end
  end
end
