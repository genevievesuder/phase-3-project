class ReservationsController < ApplicationController

  # GET: /reservations
  get "/reservations" do
    Reservation.all.to_json(include: [:users, :room], except: [:created_at, :updated_at])
    
  end

  # GET: /reservations/new
  get "/reservations/new" do
  end

  # POST: /reservations
  post "/reservations" do
    # redirect "/reservations"
    # Reservation.create("date: #{params["date"]}", first_name:  )

  end

  # GET: /reservations/5
  get "/reservations/:id" do
    reservation = Reservation.find_by(id: params["id"])
    if reservation 
      reservation.to_json(except: [:created_at, :updated_at])
    else 
      "Couldn't find reservation with id #{params["id"]}."
    end
  end

  # GET: /reservations/5/edit
  get "/reservations/:id/edit" do
  end

  # PATCH: /reservations/5
  patch "/reservations/:id" do
    redirect "/reservations/:id"
  end

  # DELETE: /reservations/5/delete
  delete "/reservations/:id/delete" do
    redirect "/reservations"
  end
end
