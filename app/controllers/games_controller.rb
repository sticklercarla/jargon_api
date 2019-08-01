class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games, include: [:user]
    end

    def create 
        game = Game.create(game_params)
        render json: game
    end

    private
    
    def game_params
      params.permit(:user_id, :score, :duration, :correct_word_count)
    end
end
