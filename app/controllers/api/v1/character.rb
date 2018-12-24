module API
  module V1
    class Character < Grape::API
      include API::V1::Defaults

      resource :characters do
        desc "Return all characters"
        get "", root: :character do
          CharactersController::Character.all
        end

        desc "Return a character"
        params do
          requires :name, type: String, desc: "Name of Character"
        end
        get ":name", root: "character" do
          Character.where({name: permitted_params[:id]}).first!
        end
      end
    end
  end
end  