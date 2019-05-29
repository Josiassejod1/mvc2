require 'rails_helper'

feature "Character page" do
    let(:character) {FactoryBot.create(:character)}
    scenario "render characters from all Universes" do
        visit("/characters")
        expect(page).to have_css("#imageList")
        expect(page).to have_content("API Demo")
    end

    let(:move) {FactoryBot.create(:move)}
    let(:move2) {FactoryBot.create(:move, move_name: "Ashura Senku")}
    let(:character) {FactoryBot.create(:character, move: [move, move2])}
    scenario "expect individual characters to be rendered" do
        visit("/characters/#{character.name}") 
        expect(page).to have_content("Akuma")
    end
end