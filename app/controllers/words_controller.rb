class WordsController < ApplicationController

    def index
        words = Word.all
        render json: words, include: [:category]
    end

end
