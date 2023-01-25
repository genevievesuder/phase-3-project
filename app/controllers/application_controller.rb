require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV["SESSION_SECRET"]
  end

  get "/me" do
    @current_user = User.find_by_id(session[:user_id]) if session[:user_id]
    if @current_user
       halt 200, {user: current_user}.to_json
    else
       halt 400, {message: "No one is logged in!"}.to_json
    end
 end

  get "/" do
    "<h2>Hello World!</h2>"
  end

end
