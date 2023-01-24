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
    redirect "/users"
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
