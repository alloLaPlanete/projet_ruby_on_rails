class Usager < ActiveRecord::Base
    validates :nom, presence: true, length: { minimum: 5}
    validates :role, presence: true, length: { minimum: 5}
    
end
