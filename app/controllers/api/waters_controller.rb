class Api::WatersController < ApplicationController
  def index
    @waters = Water.all
    render "index.json.jb"
  end

  def show
    @water = Water.find_by(id: params[:id])
    render "show.json.jb"
  end
end
