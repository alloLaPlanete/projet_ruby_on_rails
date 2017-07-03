class AddOrganismeReferentsToUsager < ActiveRecord::Migration
  def change
    add_reference :organisme_referents, :deviseuser, index: true, foreign_key: true
  end
end
