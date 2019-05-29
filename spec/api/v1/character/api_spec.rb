require 'rails_helper'

describe "API::V1::Character" do
    context 'GET api/v1/characters' do
        it 'returns a empty list of characters' do
            get '/api/v1/characters'
            expect(response.status).to eq(200)
            character.reload
            expect(JSON.parse(response.body)).to eq([])
        end 
    end
   
    let(:move) {FactoryBot.create(:move)}
    let(:move2) {FactoryBot.create(:move, move_name: "Tatsumaki Zankukyaku")}
    let(:character) {FactoryBot.create(:character, move: [move, move2])}
   
    
    context 'Get api/v1/characters/:name' do
        it 'returns a single value of a character' do
            get "/api/v1/characters/#{character.name}"
            expect(response.status).to eq(200)
            expect(response.body).to include(character.head_shot.to_json)
        end
    end
    
    context 'Get api/v1/characters/:name/moves' do
        it 'returns a list of moves for a given character' do
            get "/api/v1/characters/#{character.name}/moves"
           # character.reload.move
            expect(response.status).to eq(200)
            puts response.body.inspect
            expect(response.body).to eq(character.move.to_json)
        end
    end
end