class UsersController < ApplicationController

    get '/register' do
        erb :'users/new.html'
    end 

    post '/users' do
        @user = User.new
        @user.email = params[:email]
        @user.password = params[:password]

        if @user.save 
            redirect "/"
        else
            erb :'users/new.html'
        end
    end

    get '/login' do 
        erb :'users/login.html'
    end 

end 