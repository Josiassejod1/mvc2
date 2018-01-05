class CharactersController < ApplicationController
    def index
        @C = Character.order('name')
        
        
    end
    
    def show
       @I = Character.where({name: params[:id]}).first
       #@moves = Move.where({character_name: 'Akuma'})
       @moves = Move.where("character_name like ?", "%#{params[:id]}%")
     # puts @moves
     
    end
end
