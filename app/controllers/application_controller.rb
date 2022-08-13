class ApplicationController < Sinatra::Base
    register Sinatra::ActiveRecordExtension
    use Rack::Flash

    configure do
        enable :sessions
        set :session_secret, "guitar_tracker-1234"
        
        set :public_folder, 'public'
        set :views, 'app/views'
      end
  
end
  
  