class Api::WatersController < ApplicationController
  def index
    @waters = Water.all
    render "index.json.jb"
  end

  def show
    @water = Water.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @water = Water.new(
      name: params[:name],
      price: params[:price],
      size: params[:size]
    )
    @water.save

    render "show.json.jb"
  end

  def update
    @water = Water.find_by(id: params[:id])

    @water.name = params[:name] || @water.name
    @water.price = params[:price] || @water.price
    @water.size = params[:size] || @water.size
    @water.save

    render "show.json.jb"
  end

  def destroy
    @water = Water.find_by(id: params[:id])
    @water.destroy
    render json: {message: "Item Removed"}
  end
end
