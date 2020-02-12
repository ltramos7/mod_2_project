class MuralFavoritesController < ApplicationController
    before_action :find_user
    before_action :mural_favorites_params
    
    
    def create
        @user.mural_favorites.create(mural_favorites_params)

    end



    private

    def find_user
        @user = User.find(params[:user_id])
    end

    def mural_favorites_params
        params.require(:mural_favorite).permit(:user_id, :mural_id)
    end




end
