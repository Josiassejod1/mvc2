module API
  module V1
    class Character < Grape::API
      include API::V1::Defaults

      resource :characters do
        desc "Return all characters"
        get "", root: :character do
          CharactersController::Character.all
        end

        desc "Return all characters moves"
          puts params 
          params do
            requires :name, type: String, desc: "Name of Character"
          end
          get "/:name/moves", root: "character" do
            CharactersController::Character.find_by({name: permitted_params[:name]}).move
          end
      

        desc "Return a character"
        params do
          requires :name, type: String, desc: "Name of Character"
        end
        get ":name", root: "character" do
          CharactersController::Character.where({name: permitted_params[:name]}).first!
        end
      end
    end
  end
end  