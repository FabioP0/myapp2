class MoviesController < ApplicationController
    before_action :authenticate_user!
    def index
        @movies = Movie.all
    end

    def new
        @movie = Movie.new
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def create
        @movie = Movie.new(movie_params)
        if @movie.save
            redirect_to movie_path(@movie)
        else
            render :new
        end
    end

    def update
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
            redirect_to movie_path(@movie)
        else
            render :edit
        end
    end

    private
        def movie_params
            params.require(:movie).permit(:codigo, :titulo, :director, :genero, :avatar)
        end
end
