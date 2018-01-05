class Character < ActiveRecord::Base
    self.primary_key = :name
    validates :name, presence: true, uniqueness: true
    validates :head_shot, presence: true, uniqueness: true
    validates :universe, presence: true, inclusion: { in: %w(Marvel Capcom),
    message: "%{value} is not apart of the marvelvscapcom universe" }
    has_many :move, :foreign_key => :character_name, :primary_key => :name


end
