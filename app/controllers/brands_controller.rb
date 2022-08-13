class BrandsController < ApplicationController
    
    get '/consoles' do
        @consoles = current_user.consoles
        erb :"consoles/index.html"
    end
        

end