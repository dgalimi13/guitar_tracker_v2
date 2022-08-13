class GamesController < ApplicationController

    delete "/guitars/:id" do
        @guitar = Guitar.find_by(id: params[:id])
        @guitar.destroy
        redirect to "/brands/#{@guitar.brand.id }"
    end
    
    
    end 