class GamesController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @game = Games.all
  end

  def show

  end

  def new
    @game = Games.new()
  end

  def create
    @game = Games.new(games_params)
    @game.save
  end

  def edit

  end

  def update

  end

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
