class ReservationsController < ApplicationController

  # GET: /reservations
  get "/reservations" do
    Reservation.all.to_json(include: [:user, :room], except: [:created_at, :updated_at])

  
  end

  # GET: /reservations/new
  get "/reservations/new" do
  end

  # POST: /reservations
  post "/reservations" do

    user = User.where(first_name: params[:first_name], last_name: params[:last_name]).first
    user_id = user ? user.id : 1

    r = Reservation.create(
      check_in: params["check_in"], 
      check_out: params["check_out"], 
      user_id: user_id, 
      room_id: params["room_id"]
    )
  
    if r.id 
      halt 201, {reservation: r}.to_json
    else
      halt 400, {message: r.errors.full_messages.to_sentence}.to_json
    end

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
    reservation = Reservation.find(params[:id])
    reservation.update(
      check_in: params["check_in"], 
      check_out: params["check_out"], 
      # user_id: self.id, 
      room_id: params["room_id"]
    )
    if reservation.id 
      halt 200, {reservation: reservation}.to_json
    else
      halt 400, {message: reservation.errors.full_messages.to_sentence}.to_json
    end

    # reservation.to_json
  end

  # DELETE: /reservations/5/delete

  delete '/reservations/:id' do
    # find the review using the ID
    reservation = Reservation.find_by(id:params[:id])
    # delete the review
    if reservation 
    reservation.destroy
    # send a response with the deleted review as JSON
    halt 200, "reservation canceled".to_json
    else
    halt 400, "No ID found.".to_json
    end
  end

  # delete "/reservations/:id/delete" do
  #   reservation = Reservation.find_by(id: params["reservationId.id"])
  #   reservation.delete



  # #   def delete_reviews restaurant
  # #     self.reviews.where(restaurant:restaurant).delete_all
  # # end

  # end
end
