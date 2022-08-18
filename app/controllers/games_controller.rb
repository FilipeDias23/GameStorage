class GamesController < ApplicationController

  before_action :set_params, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all()
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new()
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(games_params)
    @game.save
  end

  # GET /games/1/edit
  def edit
  end

  #PATCH/PUT /games/1
  #PATCH/PUT /games/1.json
  def update
  end

  #DELETE /games/1
  #DELETE /games/1.json
  def destroy
  end

  private

  def set_params
    @game = Game.find(params[:id])
  end

  def games_params
    params.require(:game).permit(:name, :genre, :price, :platform, :condition)
  end
end
