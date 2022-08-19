class GamesController < ApplicationController

  before_action :set_params, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all()
  end
  #after action , automatically renders the index.json.jbuilder
  #the jbuilder view will get acess to the @games array

  # GET /games/1
  # GET /games/1.json
  def show
  end
  #after action , automatically renders the show.json.jbuilder
  #the jbuilder view will get acess to the @game object (set_params) array

  # GET /games/new
  def new
    @game = Game.new()
    render json: {
      data: @game
    }
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
