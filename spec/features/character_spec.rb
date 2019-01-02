require 'rails_helper'

feature "Character page" do
    let(:character) {FactoryBot.create(:character)}
    scenario "render characters from all Universes" do
        visit("/characters")
        expect(page).to have_css("#imageList")
    end
    
=begin
    cant test specifically because I need jest
    scenario "expect individual characters to be rendered" do
        visit("/characters")
        character = FactoryBot.create(:character)
        expect(page).to have_css("a[href*='characters/#{character.name}']")
    end
=end

    scenario "expect individual characters to be rendered" do
        characters = double("Character")
        allow(characters).to receive(:move).and_return(character.move)
        visit("/characters/Akuma") 
        expect(page).to have_content(character.name)
    end
end