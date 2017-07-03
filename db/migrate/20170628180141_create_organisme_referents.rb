class CreateOrganismeReferents < ActiveRecord::Migration
  def change
    create_table :organisme_referents do |t|
      t.string :nomOrganisme
      t.integer :adresseNoCivique
      t.string :adresseRue
      t.string :adresseVille
      t.string :adresseProvince
      t.string :adresseEtat
      t.string :adresseCodePostal
      t.string :telephoneBureau
      t.string :adresseTelecopie
      t.string :courriel
      t.string :siteWeb

      t.timestamps null: false
    end
  end
end
