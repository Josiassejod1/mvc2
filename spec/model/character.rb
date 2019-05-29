require 'rails_helper'

RSpec.describe CharactersController::Character, type: :model do
    it { should have_many(:move) }
    it { should validate_presence_of(:head_shot) }
    it { should validate_uniqueness_of(:head_shot)}
    
end