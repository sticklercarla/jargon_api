class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games, include: [:user]
    end

    def create 
        Game.create(user_id: params["user_id"], score: params["score"], duration: params["duration"], correct_word_count: params["correct_word_count"])
    end

end
