class GaragesController < ApplicationController
  def index
    respond_to do |format|
      format.html { render action: "index" }
      format.json { render json: current_user.garages }
    end
  end

  def toggle
    @garage.open ^= true
    @garage.save!
    render json: @garage
  end

  def add_permission
    render json: Permission.create!(user: User.find_by_email(params[:email]) || current_user, garage: @garage)
  end

  def revoke_permission
    render json: Permission.destroy(user: User.find_by_id(params[:user_id]) || current_user, garage: @garage)
  end

  def create
    render json: Garage.create!(user: current_user, name: params[:name])
  end

  def show
    respond_to do |format|
      format.html { render action: "index" }
      format.json { render json: Garage.find_by_id(params[:id]) }
    end
  end

  def update
    render json: @garage.update_attributes(params)
  end

  def destroy
    render json: @garage.destroy
  end
end
