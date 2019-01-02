class CharactersController < ApplicationController
    def index
        @C = Character.order('name')
        
        
    end
    
    def show
        puts params
       @I = Character.where("name like?", "%#{params[:id]}%").first
       #@moves = Move.where({character_name: 'Akuma'})
       #This method was used to account for white space when looking for a characters name
       @moves = @I.move
     # puts @moves
     
    end
end
