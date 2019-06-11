class Move < ActiveRecord::Base
    self.primary_key = :character_name
    validates  :move_name, presence: true
    validates  :character_name, presence: true
    belongs_to :character, :foreign_key => :character_name, :primary_key => :name
end
