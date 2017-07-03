class Usager < ActiveRecord::Base

   
    validates :nom, presence: true, length: { minimum: 5}
    validates :role, presence: true, length: { minimum: 5}
    
    belongs_to :deviseuser
    
    has_many :organisme_referent
    
end
