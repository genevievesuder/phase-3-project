class RoomsController < ApplicationController

  # GET: /rooms
  get "/rooms" do
    Room.all.to_json(except: [:created_at, :updated_at])
  end

  # GET: /rooms/new
  get "/rooms/new" do
  end

  # POST: /rooms
  post "/rooms" do
    redirect "/rooms"
  end

  # GET: /rooms/5
  get "/rooms/:id" do
  end

  # GET: /rooms/5/edit
  get "/rooms/:id/edit" do
  end

  # PATCH: /rooms/5
  patch "/rooms/:id" do
    redirect "/rooms/:id"
  end

  # DELETE: /rooms/5/delete
  delete "/rooms/:id/delete" do
    redirect "/rooms"
  end
end
