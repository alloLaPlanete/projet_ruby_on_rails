class AddDeviseuserToOrganisme < ActiveRecord::Migration
  def change
    add_reference :organismes, :deviseuser, index: true, foreign_key: true
  end
end
