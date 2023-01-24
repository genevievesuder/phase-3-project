class AmenitiesController < ApplicationController

  # GET: /amenities
  get "/amenities" do
    Amenitie.all.to_json(except: [:created_at, :updated_at])
  end

  # GET: /amenities/new
  get "/amenities/new" do
  end

  # POST: /amenities
  post "/amenities" do
    redirect "/amenities"
  end

  # GET: /amenities/5
  get "/amenities/:id" do
  end

  # GET: /amenities/5/edit
  get "/amenities/:id/edit" do
  end

  # PATCH: /amenities/5
  patch "/amenities/:id" do
    redirect "/amenities/:id"
  end

  # DELETE: /amenities/5/delete
  delete "/amenities/:id/delete" do
    redirect "/amenities"
  end
end
