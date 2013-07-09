class MoviesController < ApplicationController



  def index
    @movies = Movie.all
  end

  def show
  end

  def new
  end

  def create
    # movie = Movie.create(:name => params[:movie][:name])
    Movie.create(params[:movie])
    # params[:movie][:actor].each do |actor|
    #   movie.actors.build(:name => actor)
    # end
    # movie.save

    redirect_to movies_path
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
