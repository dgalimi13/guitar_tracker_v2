class BrandsController < ApplicationController
    
    get '/brands' do
        @brands = current_user.brands
        erb :"brands/index.html"
    end
    
    get '/brands/new' do 
        erb :"brands/new.html"
    end

end