class CharactersController < ApplicationController
    before_action :authenticate_user!
    def index
        @characters = Character.all
    end
    
    def new
        @character = Character.new
    end
    
    def show
        @character = CharactersController::Character.where("name like?", "%#{@name}%")
    end
    
    def create
        @characters = Character.new(character_params)
        puts @characters
        if @characters.save
            redirect_to  character_path, notice: "You created a Character."
        else
            @character = Character.new
            render :new, alert:"Your character is not created."
        end
    end
    
    def character_params
        params.require(:character).permit(:name, :head_shot, :universe)
    end
end
