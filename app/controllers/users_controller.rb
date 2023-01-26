class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    User.all.to_json(except: [:created_at, :updated_at])
  end

  # GET: /users/new
  get "/users/new" do
 
  end

  # POST: /users
  post "/users" do

      new_user = User.create(first_name: params[:username], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])

      if new_user.id 
        halt 201, {user: new_user}.to_json(include: [:reservations])
      else
        halt 400, {message: new_user.errors.full_messages.to_sentence}.to_json
      end
  
    

  end

  # GET: /users/5
  get "/users/:id" do
    user = User.find_by(id: params["id"])
    if user 
      user.to_json(except: [:created_at, :updated_at])
    else 
      "Couldn't find user with id #{params["id"]}."
    end
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end
end
