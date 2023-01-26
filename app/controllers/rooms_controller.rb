class RoomsController < ApplicationController

  # GET: /rooms
  get "/rooms" do
    Room.all.to_json(include: [:users, :reservations], except: [:created_at, :updated_at])
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
    room = Room.find_by(id: params["id"])
    if room 
      room.to_json(except: [:created_at, :updated_at])
    else 
      "Couldn't find room with id #{params["id"]}."
    end
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
