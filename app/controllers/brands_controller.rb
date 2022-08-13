class BrandsController < ApplicationController
    
    get '/brands' do
        @brands = current_user.brands
        erb :"brands/index.html"
    end
        

end