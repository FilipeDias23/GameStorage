class GamesController < ApplicationController
  def index
    @games = Games.all
  end

  def show

  end

  def new
    @game = Games.new
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

  def games_params
    params.require(:game).permit(:name, :genre, :price, :platform, :condition)
  end
end
