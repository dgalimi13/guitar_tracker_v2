class ApplicationController < Sinatra::Base
    register Sinatra::ActiveRecordExtension
    use Rack::Flash

    configure do
        enable :sessions
        set :session_secret, "video_game_tracker-1234"
        
        set :public_folder, 'public'
        set :views, 'app/views'
      end
  
end
  
  