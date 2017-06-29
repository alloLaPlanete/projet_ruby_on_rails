class AddDeviseUserRefToUsager < ActiveRecord::Migration
  def change
    add_reference :usagers, :deviseuser, index: true, foreign_key: true
  end
end
