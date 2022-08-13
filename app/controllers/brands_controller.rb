class BrandsController < ApplicationController
    
    get '/brands' do
        @brands = current_user.brands
        erb :"brands/index.html"
    end
    
    get '/brands/new' do 
        erb :"brands/new.html"
    end

    post '/brands' do 
        if params[:name] != ""
        @brand = Brand.new
        @brand.name = params[:name]
        @brand.user = current_user
        @brand.save 
            redirect '/brands'
        else 
            erb :'brands/new.html'
        end
    end

end